require 'ansible/ruby/models/unit'
require 'ansible/ruby/models/inclusion'
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Models
      class Task < Unit
        attribute :name
        validates :name, presence: true, type: String
        attribute :module
        validates :module, type: Ansible::Ruby::Modules::Base
        attribute :inclusion
        validates :inclusion, type: Inclusion
        validate :inclusion_module
        attribute :changed_when
        validates :changed_when, type: String
        attribute :failed_when
        validates :failed_when, type: String
        attribute :with_dict
        validates :with_dict, type: MultipleTypes.new(String, Hash)
        attribute :no_log
        validates :no_log, type: MultipleTypes.new(TrueClass, FalseClass)
        attribute :with_items
        validates :with_items, type: MultipleTypes.new(String, Array)
        validate :loop_and_dict
        attribute :notify
        validates :notify, type: TypeGeneric.new(String)
        attribute :async
        validates :async, type: Integer
        attribute :poll
        validates :poll, type: Integer

        def to_h
          result = super
          # Module gets referenced by name, may not have a module though
          mod_or_include = @inclusion ? :inclusion : :module
          flatten = result.delete(mod_or_include) || {}
          # Module traditionally goes right after name, so rebuilding hash
          new_result = {
            name: result.delete(:name)
          }
          new_result.merge! flatten
          result.each do |key, value|
            new_result[key] = value
          end
          new_result
        end

        private

        # :reek:NilCheck - ^ doesn't work with falsey, you would have to overload the operator
        def inclusion_module
          errors.add :module,
                     'You must either use an include or a module but not both!' unless @inclusion.nil? ^ @module.nil?
        end

        def loop_and_dict
          errors.add :with_items, 'Cannot use both with_items and with_dict!' if with_items && with_dict
        end
      end
    end
  end
end
