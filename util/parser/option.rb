# See LICENSE.txt for license
require 'json'

require_relative './option_data'

module Ansible
  module Ruby
    module Parser
      module Option
        class << self
          def parse(name, details, example)
            details = details.symbolize_keys
            # can be both an array and string
            description = [*details[:description]]
            sample_values = find_sample_values name, details, example
            types = derive_types sample_values
            OptionData.new name: name,
                           description: description,
                           required: details[:required],
                           types: types,
                           flat_array: flat_array(*sample_values),
                           choices: parse_choices(details)
          rescue
            $stderr << "Problem parsing option #{name}!"
            raise
          end

          private

          def find_sample_values(attribute, details, example)
            union_type = is_union_type? details
            result = if (default = details[:default]) && !union_type
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

          def is_union_type?(details)
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
            vals_by_key = array_of_hashes.inject({}) do |result, hash|
              hash.each do |key, value|
                by_key = result[key] ||= []
                by_key << value
                by_key.uniq!
              end
              result
            end
            vals_by_key
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
            values.map { |value| derive_type value }.uniq
          end

          def derive_type(value)
            value = unquote_string(value) if value.is_a?(String) && !is_variable_expression?(value)
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

          def is_variable_expression?(value)
            value.start_with?('{{')
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
            Integer(value) rescue false
          end

          def parsed_float(value)
            value.include?('.') && Float(value) rescue false
          end

          def flat_array(*values)
            # be conservative for now
            return nil unless values.length == 1
            value = values[0]
            return nil unless value.is_a?(String) && value.include?(',') && !is_variable_expression?(value)
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
