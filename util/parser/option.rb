# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Option
        class << self
          def parse(name, details, example)
            lines = []
            details = details.symbolize_keys
            # for some reason, description is an array
            flat_desc = details[:description].join ','
            sample_value, type = derive_type name, details, example
            document_return = type || Object
            if document_return.is_a? TypeGeneric
              document_return = "Array<#{document_return.klass.name}>"
            end
            lines << "# @return [#{document_return}] #{flat_desc}"
            attribute_args = {}
            attribute_args[:flat_array] = true if is_flat_array?(sample_value)
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

          private

          def parse_validations(attribute, details, type)
            validations = {}
            required = details[:required]
            # keep code lighter if not required
            validations[:presence] = true if required
            validations[:type] = case type
                                 when TypeGeneric
                                   "TypeGeneric.new(#{type.klass.name})"
                                 else
                                   type.name
                                 end if type
            if (choices = details[:choices])
              symbols = choices.map do |choice|
                case choice
                when TrueClass, FalseClass
                  choice
                when String
                  choice.to_sym
                else
                  choice
                end
              end
              validations[:inclusion] = {
                in: symbols,
                message: "%{value} needs to be #{symbols.map { |sym| "#{sym.inspect}" }.join(', ')}"
              }
              # let this take care of validation, no need for type
              validations.delete :type
              validations[:allow_nil] = true unless required
            end

            return nil unless validations.any?
            "validates :#{attribute}, #{validations.map { |key, value| "#{key}: #{value}" }.join(', ')}"
          end


          def derive_type(attribute, details, example)
            sample_value = derive_sample_value attribute, details, example
            [sample_value, sample_value && identify_class_from(sample_value)]
          end

          def derive_sample_value(attribute, details, example)
            if (default = details[:default])
              default
            else
              value_hash = process_hash(example)
              sample_value = value_hash[attribute]
              sample_value && sample_value
            end
          end

          def process_hash(example)
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
            Hash[flattened]
          end

          def split_equal_sign_pairs(key_value_str)
            key_value_str.map do |pair|
              equals = pair.split '='
              # some attributes have data like attr=value=value2, only want attr=value
              equals[0..1]
            end
          end

          def identify_class_from(value)
            value = unquote_string(value) if value.is_a?(String)
            if is_flat_array? value
              array = value.split ','
              item = array[0]
              klass = if is_integer?(item)
                        Integer
                      elsif is_float?(item)
                        Float
                      else
                        item.class
                      end
              TypeGeneric.new klass
            else
              value.class
            end
          end

          # some sample values are foo='stuff,bar'
          def unquote_string(string)
            ((unquoted_match = /'(.*)'/.match(string)) && unquoted_match[1]) || string
          end

          def is_integer?(value)
            Integer(value) rescue false
          end

          def is_float?(value)
            Float(value) rescue false
          end

          def is_flat_array?(value)
            value.is_a?(String) && value.include?(',')
          end
        end
      end
    end
  end
end
