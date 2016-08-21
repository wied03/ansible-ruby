require 'yaml'

module Ansible
  module Ruby
    module Serializer
      class << self
        def serialize(value)
          # Don't want symbols in YAML
          value = case value
                  when Hash
                    value.deep_stringify_keys
                  when Array
                    value.map { |item| item.deep_stringify_keys }
                  else
                    raise "Unknown type #{value.class}"
                  end
          lines = value.to_yaml.split "\n"
          lines.insert 1, '# This is a generated YAML file by ansible-ruby, DO NOT EDIT'
          lines.join "\n"
        end
      end
    end
  end
end
