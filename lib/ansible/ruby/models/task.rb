# frozen_string_literal: true

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
        attribute :block
        attribute :rescue
        attribute :inclusion
        validates :inclusion, type: Inclusion
        validate :inclusion_module_block
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
        attribute :connection
        validates :connection,
                  allow_nil: true,
                  inclusion: { in: %i[local docker ssh], message: '%{value} needs to be :local, :docker, or :ssh' }
        # :reek:Attribute - This is a simple flag
        attr_accessor :local_action
        attribute :delegate_to
        validates :delegate_to, type: String
        attribute :remote_user
        validates :remote_user, type: String

        def to_h
          result = super
          # Module gets referenced by name, may not have a module though
          mod_or_include = @inclusion ? :inclusion : :module
          flatten = result.delete(mod_or_include) || {}
          # Module traditionally goes right after name, so rebuilding hash
          new_result = {
            name: result.delete(:name)
          }
          if @local_action
            module_name = flatten.keys.first
            flatten = {
              local_action: {
                module: module_name.to_s
              }.merge(flatten[module_name])
            }
          end
          new_result.merge! flatten
          result.each do |key, value|
            new_result[key] = value
          end
          new_result
        end

        private

        # :reek:NilCheck - ^ doesn't work with falsey, you would have to overload the operator
        def inclusion_module_block
          options = [@inclusion, @module, @block].compact
          return if options.size == 1

          errors.add :module,
                     "You must either use an include or a module/block but not both! module: #{@module}, inclusion: #{@inclusion}, block: #{@block}"
        end

        def loop_and_dict
          errors.add :with_items, 'Cannot use both with_items and with_dict!' if with_items && with_dict
        end
      end
    end
  end
end
