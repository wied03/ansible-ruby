module Ansible
  module Ruby
    class BasicUnit
      def initialize(args={})
        validate args
        args.each { |key, value| instance_variable_set "@#{key}".to_sym, value }
      end

      def to_h
        attr = Hash[
          self.class.attributes.map do |key, _|
            value = self.send key
            next unless value
            value = value.to_s if value.is_a? Symbol
            [key.to_s, value]
          end.compact]
        {
          self.class.name.downcase => attr
        }
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
        klass_attr.select { |key, opts| (choice = opts[:choices]) && !choice.include?(args[key]) }
          .each { |key, opts| errors << "Attribute #{key} can only be #{opts[:choices]}" }
        raise errors.join("\n") if errors.any?
      end
    end
  end
end
