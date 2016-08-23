# See LICENSE.txt for license
require 'json'

module Ansible
  module Ruby
    module Parser
      module Option
        BOOLEAN_OPTIONS = [true, false]

        class << self
          def parse(name, details, example)
            puts "parsing option #{name}"
            details = details.symbolize_keys
            # can be both an array and string
            description = [*details[:description]]
            type_details = derive_type name, details, example
            OptionData.new name: name,
                           description: description,
                           required: type_details[:required],
                           type: type_details[:type],
                           flat_array: type_details[:flat_array]
          rescue
            $stderr << "Problem parsing option #{name}!"
            raise
          end

          private

          def derive_type(attribute, details, example)
            sample_values = find_sample_values attribute, details, example
            {
              type: sample_values && identify_non_choice_value(sample_values),
              required: details[:required],
              flat_array: flat_array(sample_values)
            }
          end

          def find_sample_values(attribute, details, example)
            union_type = is_union_type? details
            if (default = details[:default]) && !union_type
              default
            elsif (choices = parsed_choices(details)) && !union_type
              choices[0]
            elsif union_type
              nil
            else
              return nil unless [Hash, Array].include? example.class
              values_by_key = values_by_key(example)
              values_by_key[attribute]
            end
          end

          def parsed_choices(details)
            choices = details[:choices]
            return nil unless choices && choices.any?
            choices.map do |choice|
              result = parse_value_into_num choice
              result = result.to_sym if result.is_a?(String)
              result
            end
          end

          def choice_classes(details)
            choices = parsed_choices details
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
            puts "first cut #{first_cut}"
            array_of_hashes = first_cut.map do |value|
              if value.is_a?(String)
                hash_equal_sign_pairs(value)
              elsif value.is_a? Hash
                value
              end
            end.compact
            puts "array of hashes #{array_of_hashes}"
            vals_by_key = array_of_hashes.inject({}) do |result, hash|
              hash.each do |key, value|
                by_key = result[key] ||= []
                by_key << value
                by_key.uniq!
              end
              result
            end
            puts "values by key #{vals_by_key}"
            vals_by_key
          end

          def hash_equal_sign_pairs(key_value_str)
            Hash[key_value_str.split(' ').map do |pair|
              equals = pair.split '='
              # some attributes have data like attr=value=value2, only want attr=value
              equals[0..1]
            end]
          end

          def identify_non_choice_value(value)
            puts "ident non choice #{value}"
            value = unquote_string(value) if value.is_a?(String) && !is_variable_expression?(value)
            flat_array = flat_array value
            if flat_array
              item = flat_array[0]
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

          def flat_array(value)
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
