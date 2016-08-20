require 'yaml'

module Ansible
  module Ruby
    module Serializer
      class << self
        def serialize(hash)
          str = hash.to_yaml
          lines = str.split "\n"
          lines.insert 1, '# This is a generated YAML file by ansible-ruby, DO NOT EDIT'
          lines.join "\n"
        end
      end
    end
  end
end
