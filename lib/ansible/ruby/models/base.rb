# frozen_string_literal: true

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
          @set_vars = {}
          super
        end

        class << self
          def remove_existing_validations(attr)
            options = attr_option(attr)
            options.clear
            _validators.delete attr
            callbacks = send(:get_callbacks, :validate)
            for_this_att = callbacks.select do |callback|
              filter = callback.filter
              filter.respond_to?(:attributes) && filter.attributes == [attr]
            end
            for_this_att.each { |callback| callbacks.delete callback }
          end

          def attr_options
            @attr_options ||= begin
              # need parent attribute info
              hash = Base > self ? superclass.attr_options : {}
              hash.clone
            end
          end

          def attribute(name, options = {})
            attr_reader name
            # Want to keep track of what we set (avoid default issues)
            ivar = "@#{name}".to_sym
            define_method("#{name}=".to_sym) do |value|
              @set_vars[name] = true
              instance_variable_set ivar, value
            end
            for_name = attr_options[name] ||= {}
            for_name.merge! options
          end

          def attr_option(name)
            attr_options[name]
          end

          def validates(*attributes)
            super
            # avoid having to dupe this in the :attribute call
            hash = attributes.length > 1 && attributes[1]
            type_validator = hash && hash[:type]
            return unless type_validator&.is_a?(TypeGeneric)

            name = attributes[0]
            for_name = attr_options[name] ||= {}
            for_name[:generic] = type_validator.klasses
          end
        end

        def to_h
          validate!
          Hash[
            @set_vars.map do |key, _|
              value = send key
              options = self.class.attr_option(key)
              value = hashify value
              generic_types = options[:generic]
              value = convert_generic generic_types, value if generic_types
              key = options[:original_name] || key
              [key, value]
            end.compact]
        end

        private

        def hashify(value)
          case value
          when Array
            value.map { |val| val.respond_to?(:to_h) ? val.to_h : val }
          when Base
            value.to_h
          when Ansible::Ruby::Models::JinjaExpression
            value.to_s
          else
            value
          end
        end

        def convert_generic(generic_types, value)
          # hash friendly of [*value]
          if generic_types.any? { |type| value.is_a? type }
            [value]
          else
            value
          end
        end
      end
    end
  end
end
