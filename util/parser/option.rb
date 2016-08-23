# See LICENSE.txt for license
require 'json'

module Ansible
  module Ruby
    module Parser
      module Option
        BOOLEAN_OPTIONS = [true, false]

        class << self
          def parse(name, details, example)
            puts "handling option #{name}"
            lines = []
            details = details.symbolize_keys
            # for some reason, description is often an array
            flat_desc = [*details[:description]].join ','
            type_details = derive_type name, details, example
            formatted_type = format_yard_return_type(type_details)
            lines << "# #{formatted_type} #{flat_desc}"
            attribute_args = {}
            attribute_args[:flat_array] = true if type_details[:flat_array]
            flat_attr_args = attribute_args.map do |key, value|
              "#{key}: #{value}"
            end.join ', '
            lines << "attribute :#{name}#{flat_attr_args.empty? ? '' : ", #{flat_attr_args}"}"
            lines << parse_validations(name, type_details)
            lines.compact
          rescue
            $stderr << "Problem parsing option #{name}!"
            raise
          end

          def format_yard_return_type(type_details)
            type = type_details[:type]
            types = if (choices = type_details[:choices])
                      if (BOOLEAN_OPTIONS - choices).empty?
                        choices = choices - BOOLEAN_OPTIONS
                        choices << 'Boolean'
                      else
                        choices
                      end
                    elsif type.is_a? TypeGeneric
                      "Array<#{type.klass.name}>"
                    else
                      type || Object
                    end
            types = [*types]
            types << nil unless type_details[:required]
            formatted = [*types].map do |each_type|
              case each_type
              when Class
                each_type.name
              when Symbol
                each_type.inspect
              when NilClass
                'nil'
              else
                each_type
              end
            end.join ', '
            "@return [#{formatted}]"
          end

          private

          def parse_validations(attribute, type_details)
            validations = {}
            required = type_details[:required]
            # keep code lighter if not required
            validations[:presence] = true if required
            validations[:type] = case type
                                 when TypeGeneric
                                   "TypeGeneric.new(#{type.klass.name})"
                                 when String
                                   # Boolean for YARD
                                   type
                                 else
                                   type.name
                                 end if type
            if (choices = type_details[:choices])
              validations[:inclusion] = {
                in: choices,
                message: "%{value} needs to be #{choices.map { |sym| "#{sym.inspect}" }.join(', ')}"
              }
              # let this take care of validation, no need for type
              validations.delete :type
              validations[:allow_nil] = true unless required
            end

            return nil unless validations.any?
            "validates :#{attribute}, #{validations.map { |key, value| "#{key}: #{value}" }.join(', ')}"
          end

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
