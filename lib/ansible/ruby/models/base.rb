require 'active_model'
require 'ansible/ruby/models/type_generic'
require 'ansible/ruby/models/multiple_types'
require 'ansible/ruby/models/type_validator'

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
            for_name = @attr_options[name] ||= {}
            for_name.merge! options
          end

          def attr_options(name)
            @attr_options[name]
          end

          def validates(*attributes)
            super
            # avoid having to dupe this in the :attribute call
            hash = attributes.length > 1 && attributes[1]
            type_validator = hash && hash[:type]
            return unless type_validator
            if type_validator.is_a?(TypeGeneric)
              name = attributes[0]
              for_name = @attr_options[name] ||= {}
              for_name[:generic] = type_validator.klass
            end
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
              value = convert_generic options[:generic], value
              key = options[:original_name] || key
              [key, value]
            end.compact]
        end

        private

        def convert_generic(generic_type, value)
          return value unless generic_type
          # hash friendly of [*value]
          case value
          when generic_type
            [value]
          else
            value
          end
        end
      end
    end
  end
end
