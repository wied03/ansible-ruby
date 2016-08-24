# See LICENSE.txt for license
module Ansible
  module Ruby
    module OptionFormatter
      BOOLEAN_OPTIONS = [true, false]

      class << self
        def format(option_data)
          lines = []
          formatted_type = format_yard_return_types(option_data)
          flat_desc = option_data.description.join ','
          lines << "# #{formatted_type} #{flat_desc}"
          attribute_args = {}
          attribute_args[:flat_array] = true if option_data.flat_array?
          flat_attr_args = attribute_args.map do |key, value|
            "#{key}: #{value}"
          end.join ', '
          name = option_data.name
          lines << "attribute :#{name}#{flat_attr_args.empty? ? '' : ", #{flat_attr_args}"}"
          lines << format_validations(option_data)
          lines.compact
        rescue
          $stderr << "Problem formatting option #{name}!"
          raise
        end

        private

        def format_yard_return_types(option_data)
          types = if (choices = option_data.choices)
                    if (BOOLEAN_OPTIONS - choices).empty?
                      choices = choices - BOOLEAN_OPTIONS
                      choices << 'Boolean'
                    else
                      choices
                    end
                  else
                    option_data.types
                  end.clone # no mutating
          # Want to at least show something
          types << Object if types.empty?
          types << nil unless option_data.required?
          formatted = types.map { |type| format_yard_type type }.join ', '
          "@return [#{formatted}]"
        end

        def format_yard_type(type)
          type = "Array<#{type.klass.name}>" if type.is_a? TypeGeneric
          case type
          when Class
            type.name
          when Symbol
            type.inspect
          when NilClass
            'nil'
          else
            type
          end
        end

        def format_validations(option_data)
          validations = {}
          required = option_data.required?
          types = option_data.types
          # keep code lighter if not required
          validations[:presence] = true if required
          generics = types.select { |t| t.is_a?(TypeGeneric) }.uniq
          raise "Only know how to deal with 1 generic type, found #{generics}" unless generics.length <= 1
          type = if generics.any?
                   generic = generics[0]
                   "TypeGeneric.new(#{generic.klass.name})"
                 elsif types.length > 1
                   "MultipleTypes.new(#{types.map { |type| format_single_validation type }.join ', '})"
                 elsif types.length == 1
                   format_single_validation types[0]
                 end
          if (choices = option_data.choices)
            validations[:inclusion] = {
              in: choices,
              message: "%{value} needs to be #{choices.map { |sym| "#{sym.inspect}" }.join(', ')}"
            }
            # let this take care of validation, no need for type
            validations[:allow_nil] = true unless required
          elsif type
            validations[:type] = type
          end

          return nil unless validations.any?
          "validates :#{option_data.name}, #{validations.map { |key, value| "#{key}: #{value}" }.join(', ')}"
        end

        def format_single_validation(type)
          case type
          when TypeGeneric
            "TypeGeneric.new(#{type.klass.name})"
          when String
            # Boolean for YARD
            type
          else
            type.name
          end
        end
      end
    end
  end
end
