# frozen_string_literal: true
# See LICENSE.txt for license
module Ansible
  module Ruby
    module OptionFormatter
      BOOLEAN_OPTIONS = [true, false].freeze

      class << self
        def format(option_data)
          lines = []
          formatted_type = format_yard_return_types(option_data)
          flat_desc = option_data.description.join ','
          lines << "# #{formatted_type} #{flat_desc}"
          attribute_args = {}
          name = option_data.name
          attribute_args[:original_name] = "'#{name}'" if track_original_name?(name)
          flat_attr_args = attribute_args.map do |key, value|
            "#{key}: #{value}"
          end.join ', '
          symbol = symbolize_attribute(name)
          lines << "attribute #{symbol}#{flat_attr_args.empty? ? '' : ", #{flat_attr_args}"}"
          lines << format_validations(option_data)
          lines.compact
        rescue
          $stderr << "Problem formatting option #{name}!"
          raise
        end

        private

        def track_original_name?(name)
          name.include? '-'
        end

        def symbolize_attribute(name)
          name.tr('-', '_').to_sym.inspect
        end

        def format_yard_return_types(option_data)
          types = if (choices = option_data.choices)
                    if (BOOLEAN_OPTIONS - choices).empty?
                      choices -= BOOLEAN_OPTIONS
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
          # we let user use an array or single value
          case type
          when TypeGeneric
            # Only using 1 of the generic/union-ish types right now
            klass_name = type.klasses[0].name
            "Array<#{klass_name}>, #{klass_name}"
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
          generics = locate_generics types
          if (choices = option_data.choices)
            choices_validation validations, choices
            validations[:allow_nil] = true unless required
          else
            type = validation_type(generics, types)
            validations[:type] = type if type
          end

          return nil unless validations.any?
          symbol = symbolize_attribute(option_data.name)
          "validates #{symbol}, #{validations.map { |key, value| "#{key}: #{value}" }.join(', ')}"
        end

        def locate_generics(types)
          generics = types.select { |type| type.is_a?(TypeGeneric) }.uniq
          raise "Only know how to deal with 1 generic type, found #{generics}" unless generics.length <= 1
          generics
        end

        def choices_validation(validations, choices)
          validations[:inclusion] = {
            in: choices,
            message: "%{value} needs to be #{choices.map { |sym| sym.inspect.to_s }.join(', ')}"
          }
        end

        def validation_type(generics, types)
          if generics.any?
            generic = generics[0]
            "TypeGeneric.new(#{generic.klasses.map(&:name).join ', '})"
          elsif types.length > 1
            "MultipleTypes.new(#{types.map { |type| format_single_validation type }.join ', '})"
          elsif types.length == 1
            format_single_validation types[0]
          end
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
