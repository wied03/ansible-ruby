# See LICENSE.txt for license
require 'json'

module Ansible
  module Ruby
    module Parser
      module Option
        BOOLEAN_OPTIONS = [true, false]

        class << self
          def parse(name, details, example)
            lines = []
            details = details.symbolize_keys
            # for some reason, description is often an array
            flat_desc = [*details[:description]].join ','
            sample_value, type = derive_type name, details, example
            formatted_type = format_yard_return_type(type, details)
            lines << "# #{formatted_type} #{flat_desc}"
            attribute_args = {}
            attribute_args[:flat_array] = true if flat_array(sample_value)
            flat_attr_args = attribute_args.map do |key, value|
              "#{key}: #{value}"
            end.join ', '
            lines << "attribute :#{name}#{flat_attr_args.empty? ? '' : ", #{flat_attr_args}"}"
            lines << parse_validations(name, details, type)
            lines.compact
          rescue
            $stderr << "Problem parsing option #{name}!"
            raise
          end

          def format_yard_return_type(type, details)
            types = if (choices = parsed_choices(details))
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
            types << nil unless is_required?(details)
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

          def parse_validations(attribute, details, type)
            validations = {}
            required = is_required? details
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
            if (choices = parsed_choices(details))
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

          def is_required?(details)
            details[:required]
          end

          def derive_type(attribute, details, example)
            sample_value = derive_sample_value attribute, details, example
            [sample_value, sample_value && identify_non_choice_value(sample_value)]
          end

          def derive_sample_value(attribute, details, example)
            union_type = is_union_type? details
            if (default = details[:default]) && !union_type
              default
            elsif (choices = parsed_choices(details)) && !union_type
              choices[0]
            elsif union_type
              nil
            else
              return nil unless [Hash, Array].include? example.class
              value_hash = process_hash(example)
              sample_value = value_hash[attribute]
              sample_value && sample_value
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

          def process_hash(example)
            example = example['tasks'] if example.is_a?(Hash) && example['tasks']
            first_cut = example.map { |ex| ex.reject { |key, _| key == 'name' } }
                          .map { |ex| ex.map { |_, value| value } }
                          .flatten
            kv_array = first_cut.map do |value|
              if value.is_a?(String)
                split_equal_sign_pairs(value.split(' '))
              elsif value.is_a? Hash
                value.map { |key, value| [key, value] }
              end
            end.compact
            # Only want to get everything on the same level
            flattened = kv_array.flatten(1)
            # could get confused with both array/string usages, so simplify this
            cleaned = flattened.select do |item|
              item.is_a?(Array) && item.length == 2
            end
            Hash[cleaned]
          end

          def split_equal_sign_pairs(key_value_str)
            key_value_str.map do |pair|
              equals = pair.split '='
              # some attributes have data like attr=value=value2, only want attr=value
              equals[0..1]
            end
          end

          def identify_non_choice_value(value)
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
