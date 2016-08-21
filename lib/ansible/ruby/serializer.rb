require 'yaml'

module Ansible
  module Ruby
    module Serializer
      class << self
        def serialize(hash)
          # Don't want symbols in YAML
          str = hash.deep_stringify_keys.to_yaml
          lines = str.split "\n"
          lines.insert 1, '# This is a generated YAML file by ansible-ruby, DO NOT EDIT'
          lines.join "\n"
        end
      end
    end
  end
end
