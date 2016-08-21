module Ansible
  module Ruby
    class Task < BaseModel
      attribute :name
      validates :name, presence: true, type: String
      attribute :module
      validates :module, presence: true
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
      validates :with_dict, type: String
      attribute :notify
      validates :notify, type: TypeGeneric.new(String)
      attribute :async
      validates :async, type: Integer
      attribute :poll
      validates :poll, type: Integer
      attribute :ignore_errors
      validates :ignore_errors, type: MultipleTypes.new(TrueClass, FalseClass)

      def to_h
        result = super
        # Module gets referenced by name
        mod = result.delete :module
        notify = result.delete :notify
        # Module traditionally goes right after name, so rebuilding hash
        new_result = {
          name: result.delete(:name)
        }
        new_result.merge! mod
        result.each do |key, value|
          new_result[key] = value
        end
        new_result[:notify] = [*notify] if notify
        new_result
      end
    end
  end
end
