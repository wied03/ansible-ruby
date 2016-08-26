require 'ansible/ruby/models/unit'

module Ansible
  module Ruby
    module Models
      class Task < Unit
        attribute :module
        validates :module, presence: true

        def to_h
          result = super
          # Module gets referenced by name
          mod = result.delete :module
          # Module traditionally goes right after name, so rebuilding hash
          new_result = {
            name: result.delete(:name)
          }
          new_result.merge! mod
          result.each do |key, value|
            new_result[key] = value
          end
          new_result
        end
      end
    end
  end
end
