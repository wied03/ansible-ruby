# See LICENSE.txt for license
require 'json'

require_relative './option_data'

module Ansible
  module Ruby
    module Parser
      module Option
        class << self
          def parse(name, details, example)
            puts "---\nParsing option #{name}" if debug?
            details = details.symbolize_keys
            description = parse_description(details)
            sample_values = find_sample_values name, details, example
            types = derive_types sample_values
            choices = parse_choices(details)
            # Example only has true or false
            missing_bool_type = missing_bool_type types
            if missing_bool_type
              types << missing_bool_type
              choices = [true, false]
            end
            puts "Sample values: #{sample_values}\nDerived Types: #{types}" if debug?
            OptionData.new name: name,
                           description: description,
                           required: details[:required],
                           types: types,
                           choices: choices
          rescue
            $stderr << "Problem parsing option #{name}!"
            raise
          ensure
            puts "\nDone Parsing option #{name}" if debug?
          end

          def parse_description(details)
            # can be both an array and string, could have carriage returns in it
            lines = [*details[:description]]
            lines.map do |line|
              line.gsub(/\r?\n/, '\\r\\n')
            end
          end

          private

          def debug?
            ENV['DEBUG']
          end

          def missing_bool_type(types)
            result = [TrueClass, FalseClass] - types
            result.length == 1 ? result[0] : nil
          end

          def find_sample_values(attribute, details, example)
            union_type = union_type? details
            default = details[:default]
            # A lot of options with no defaults in Ansible have a value of None
            result = if use_default?(default, union_type)
                       default
                     elsif (choices = parse_choices(details)) && !union_type
                       choices[0]
                     elsif union_type
                       nil
                     elsif [Hash, Array].include? example.class
                       values_by_key = values_by_key(example)
                       values_by_key[attribute]
                     else
                       []
                     end
            [*result]
          end

          def use_default?(default, union_type)
            !default.is_a?(NilClass) && !union_type && default != 'None'
          end

          def parse_choices(details)
            choices = details[:choices]
            return nil unless choices && choices.any?
            choices.map do |choice|
              result = parse_value_into_num choice
              result = result.to_sym if result.is_a?(String)
              result
            end
          end

          def choice_classes(details)
            choices = parse_choices details
            return nil unless choices
            choices.map do |choice|
              case choice
              when TrueClass, FalseClass
                # for YARD purposes
                'Boolean'
              else
                choice.class
              end
            end.uniq
          end

          def union_type?(details)
            klasses = choice_classes details
            klasses && klasses.length != 1
          end

          def values_by_key(example)
            example = example['tasks'] if example.is_a?(Hash) && example['tasks']
            first_cut = example.map { |ex| ex.reject { |key, _| key == 'name' } }
                               .map { |ex| ex.map { |_, value| value } }
                               .flatten
            array_of_hashes = first_cut.map do |value|
              if value.is_a?(String)
                hash_equal_sign_pairs(value)
              elsif value.is_a? Hash
                value
              end
            end.compact
            array_of_hashes.each_with_object({}) do |hash, result|
              hash.each do |key, value|
                by_key = result[key] ||= []
                by_key << value
                by_key.uniq!
              end
              result
            end
          end

          def hash_equal_sign_pairs(key_value_str)
            Hash[key_value_str.split(' ').map do |pair|
              equals = pair.split '='
              next unless equals.length >= 2
              # some attributes have data like attr=value=value2, only want attr=value
              equals[0..1]
            end.compact]
          end

          def derive_types(values)
            types = values.map { |value| derive_type value }.uniq
            generic = types.find { |type| type.is_a?(TypeGeneric) }
            # No need to include generic and the generic's type
            types.reject { |type| generic && type == generic.klass }
          end

          def derive_type(value)
            value = unquote_string(value) if value.is_a?(String) && !variable_expression?(value)
            array = flat_array(value) || (value.is_a?(Array) && value)
            if array
              item = array[0]
              value = parse_value_into_num item
              klass = handle_fixnum value.class
              TypeGeneric.new klass
            else
              handle_fixnum value.class
            end
          end

          def variable_expression?(value)
            value.lstrip.start_with?('{{')
          end

          def handle_fixnum(klass)
            # Integers are more clear
            klass == Fixnum ? Integer : klass
          end

          def parse_value_into_num(item)
            return item unless item.is_a?(String)
            parsed_float(item) || parsed_integer(item) || item
          end

          # some sample values are foo='stuff,bar'
          def unquote_string(string)
            ((unquoted_match = /'(.*)'/.match(string)) && unquoted_match[1]) || string
          end

          def parsed_integer(value)
            Integer(value)
          rescue
            false
          end

          def parsed_float(value)
            value.include?('.') && Float(value)
          rescue
            false
          end

          def flat_array(*values)
            # be conservative for now
            return nil unless values.length == 1
            value = values[0]
            return nil unless value.is_a?(String) && value.include?(',') && !variable_expression?(value)
            items = value.split(',').map do |item|
              item = parse_value_into_num(item)
              item.inspect
            end
            array_str = "[#{items.join(', ')}]"
            JSON.parse array_str
          rescue
            # if we can't parse it with what we did, it's not an array
            false
          end
        end
      end
    end
  end
end
