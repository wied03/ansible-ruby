module Ansible
  module Ruby
    class BasicUnit
      def initialize(args)
        supplied_keys = args.keys
        required_keys = self.class
                          .attributes
                          .select { |_, opts| opts[:required] }
                          .map { |key, _| key }
        missing = required_keys - supplied_keys
        if missing.any?
          raise "Attribute #{missing[0]} is required"
        end
        @values = args
      end

      def to_h
        attr = Hash[
          self.class.attributes.map do |key, _|
            next nil unless @values[key]
            [key, @values[key]]
          end]
        {
          self.class.name.downcase.to_sym => attr
        }
      end

      class << self
        def attributes
          @attributes
        end

        def attribute(name, options = {})
          attributes = @attributes ||= {}
          attributes[name] = options
        end
      end
    end
  end
end
