require 'active_model'
require 'ansible/ruby/type_validator'

module Ansible
  module Ruby
    module Models
      class Base
        include ActiveModel::Model
        include ActiveModel::Validations

        def initialize(args = {})
          super
          @set_vars = args.keys
        end

        class << self
          def attribute(name, options = {})
            attr_accessor name
            @attr_options ||= {}
            @attr_options[name] = options
          end

          def attr_options(name)
            @attr_options[name]
          end
        end

        def to_h
          validate!
          Hash[
            @set_vars.map do |key|
              value = send key
              options = self.class.attr_options(key)
              value = if options[:flat_array]
                        # some ansible options are reflected as CSVs
                        value.join ','
                      else
                        case value
                        when Array
                          value.map { |val| val.respond_to?(:to_h) ? val.to_h : val }
                        when Base
                          value.to_h
                        else
                          value
                        end
                      end
              key = options[:original_name] || key
              [key, value]
            end.compact]
        end
      end
    end
  end
end
