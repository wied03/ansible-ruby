require 'active_model'
require 'ansible/ruby/type_validator'

module Ansible
  module Ruby
    class BaseModel
      include ActiveModel::Model
      include ActiveModel::Validations

      def initialize(args = {})
        super
        @set_vars = args.keys
      end

      class << self
        def attribute(name)
          attr_accessor name
        end
      end

      def to_h
        validate!
        Hash[
          @set_vars.map do |key|
            value = send key
            value = case value
                    when BaseModel
                      value.to_h
                    else
                      value
                    end
            [key, value]
          end.compact]
      end
    end
  end
end
