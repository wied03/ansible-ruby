module Ansible
  module Ruby
    class BasicUnit
      def initialize(args={})
        validate args
        args.each do |key, value|
          normalized = value.is_a?(Array) && value.length == 1 ? value[0] : value
          instance_variable_set "@#{key}".to_sym, normalized
        end
      end

      def to_h
        Hash[
          self.class.attributes.map do |key, _|
            value = self.send key
            next unless value
            value = case value
                    when Symbol
                      # leave symbols out of YAML
                      value.to_s
                    when BasicUnit
                      value.to_h
                    else
                      value
                    end
            [key.to_s, value]
          end.compact]
      end

      class << self
        def attributes
          @attributes
        end

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
        missing = required_keys - supplied_keys
        if missing.any?
          errors << if missing.length > 1
                      "Attributes #{missing} are required"
                    else
                      "Attribute #{missing[0]} is required"
                    end

        end
        klass_attr.each do |key, opts|
          value = args[key]
          if (choice = opts[:choices]) && !choice.include?(value)
            errors << "Attribute #{key} can only be #{opts[:choices]}"
          end
          unless !value.is_a?(Array) || opts[:array] || value.length == 1
            errors << "Attribute #{key} cannot be an array"
          end
        end
        raise errors.join("\n") if errors.any?
      end
    end
  end
end
