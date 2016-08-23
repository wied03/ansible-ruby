# See LICENSE.txt for license
module Ansible
  module Ruby
    module OptionFormatter
      class << self
        def format(option_data)
          lines = []
          formatted_type = format_yard_return_type(option_data)
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

        def format_yard_return_type(option_data)
          type = option_data[:type]
          types = if (choices = option_data[:choices])
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
          types << nil unless option_data[:required]
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

        def format_validations(option_data)
          validations = {}
          required = option_data[:required]
          type = option_data.type
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
          if (choices = option_data[:choices])
            validations[:inclusion] = {
              in: choices,
              message: "%{value} needs to be #{choices.map { |sym| "#{sym.inspect}" }.join(', ')}"
            }
            # let this take care of validation, no need for type
            validations.delete :type
            validations[:allow_nil] = true unless required
          end

          return nil unless validations.any?
          "validates :#{option_data.name}, #{validations.map { |key, value| "#{key}: #{value}" }.join(', ')}"
        end

      end
    end
  end
end
