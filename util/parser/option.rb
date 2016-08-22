# See LICENSE.txt for license
module Ansible
  module Ruby
    module Parser
      module Option
        class << self
          def parse(name, details, example)
            lines = []
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
            lines.compact.join "\n"
          end

          private

          def parse_validations(attribute, details, type)
            validations = {}
            validations[:presence] = true if details[:required]
            validations[:type] = case type
                                 when TypeGeneric
                                   "TypeGeneric.new(#{type.klass.name})"
                                 else
                                   type.name
                                 end if type

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
              value_array = example.map { |ex| ex.values }.flatten
              key_value_str = value_array.map do |value|
                value.split ' '
              end.flatten
              value_hash = Hash[key_value_str.map do |pair|
                equals = pair.split '='
                # some attributes have data like attr=value=value2, only want attr=value
                equals[0..1]
              end]
              sample_value = value_hash[attribute]
              sample_value && sample_value
            end
          end

          def identify_class_from(value)
            if is_flat_array? value
              array = value.split ','
              TypeGeneric.new array[0].class
            else
              value.class
            end
          end

          def is_flat_array?(value)
            value.is_a?(String) && value.include?(',')
          end
        end
      end
    end
  end
end
