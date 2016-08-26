# see LICENSE.txt in project root
module Ansible
  module Ruby
    module Models
      class Unit < Base
        attribute :register
        validates :register, type: String
        attribute :become
        validates :become, type: MultipleTypes.new(TrueClass, FalseClass)
        attribute :become_user
        validates :become_user, type: String
        attribute :changed_when
        validates :changed_when, type: String
        attribute :failed_when
        validates :failed_when, type: String
        attribute :when
        validates :when, type: String
        attribute :with_dict
        validates :with_dict, type: MultipleTypes.new(String, Hash)
        attribute :with_items
        validates :with_items, type: MultipleTypes.new(String, Array)
        attribute :notify
        validates :notify, type: TypeGeneric.new(String)
        attribute :async
        validates :async, type: Integer
        attribute :poll
        validates :poll, type: Integer
        attribute :ignore_errors
        validates :ignore_errors, type: MultipleTypes.new(TrueClass, FalseClass)
        validate :loop_and_dict

        def to_h
          result = super
          notify = result.delete :notify
          result[:notify] = [*notify] if notify
          result
        end

        private

        def loop_and_dict
          errors.add :with_items, 'Cannot use both with_items and with_dict!' if with_items && with_dict
        end
      end
    end
  end
end
