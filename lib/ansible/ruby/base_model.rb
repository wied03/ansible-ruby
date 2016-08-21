module Ansible
  module Ruby
    class BaseModel
      def initialize(args = {})
        validate args
        @set_vars = args.keys
        args.each do |key, value|
          normalized = value.is_a?(Array) && value.length == 1 ? value[0] : value
          instance_variable_set "@#{key}".to_sym, normalized
        end
      end

      def to_h
        Hash[
          @set_vars.map do |key|
            value = send key
            value = case value
                    when Symbol
                      # leave symbols out of YAML
                      value.to_s
                    when BaseModel
                      value.to_h
                    else
                      value
                    end
            [key.to_s, value]
          end.compact]
      end

      class << self
        attr_reader :attributes

        def attribute(name, options = {})
          attributes = @attributes ||= {}
          attributes[name] = options
          attr_reader name
        end
      end

      private

      def validate(args)
        supplied_keys = args.keys
        klass_attr = self.class.attributes
        required_keys = klass_attr.select { |_, opts| opts[:required] }
                                  .map { |key, _| key }
        errors = []
        valid_attribute_keys = self.class.attributes.keys
        unknown = supplied_keys - valid_attribute_keys
        if unknown.any?
          errors << "Attributes #{unknown} are unknown. Valid attributes are #{valid_attribute_keys}"
        end
        missing = required_keys - supplied_keys
        if missing.any?
          errors << if missing.length > 1
                      "Attributes #{missing} are required"
                    else
                      "Attribute #{missing[0]} is required"
                    end

        end
        klass_attr.each do |key, opts|
          next unless args.include? key
          value = args[key]
          errors << "Attribute #{key} cannot be nil" unless opts[:nil] || value
          if (choice = opts[:choices]) && !choice.include?(value)
            errors << "Attribute #{key} can only be #{opts[:choices]}"
          end
          single_value_as_array = !opts[:array] && value.is_a?(Array) && value.length == 1
          next unless (type = opts[:type])
          value_to_use = single_value_as_array ? value[0] : value
          unless [*type].any? { |t| value_to_use.is_a?(t) } || value_to_use.is_a?(NilClass)
            errors << "Attribute #{key} expected to be an #{type} but was a #{value_to_use.class}"
          end
        end
        raise errors.join("\n") if errors.any?
      end
    end
  end
end
