module Ansible
  module Ruby
    class BasicUnit
      def initialize(args)
        @values = args
      end

      def to_h
        attr = Hash[
          self.class.attributes.map do |key|
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

        def attribute(name, *options)
          attributes = @attributes ||= []
          attributes << name
        end
      end
    end
  end
end
