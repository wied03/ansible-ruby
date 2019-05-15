# frozen_string_literal: true

require 'yaml'

module Ansible
  module Ruby
    module Serializer
      class << self
        def serialize(value)
          value = normalize_values value
          lines = value.to_yaml.split "\n"
          lines.insert 1, '# This is a generated YAML file by ansible-ruby, DO NOT EDIT'
          lines.join "\n"
        end

        private

        def normalize_values(value)
          # Don't want symbols in YAML
          case value
          when Hash
            Hash[value.map do |key, val|
              [key.to_s, normalize_values(val)]
            end]
          when Array
            value.map { |val| normalize_values(val) }
          when Symbol
            value.to_s
          else
            value
          end
        end
      end
    end
  end
end
