module Ansible
  module Ruby
    class Task < BaseModel
      attr_accessor :name
      validates :name, presence: true, type: String
      attr_accessor :module
      validates :name, presence: true
      attr_accessor :register
      validates :register, type: String
      attr_accessor :become
      validates :become, type: String
      # attribute :become, type: [TrueClass, FalseClass]
      attr_accessor :become_user
      validates :become_user, type: String
      attr_accessor :changed_when
      validates :changed_when, type: String
      attr_accessor :failed_when
      validates :failed_when, type: String
      attr_accessor :when
      validates :when, type: String
      attr_accessor :with_dict
      validates :with_dict, type: String
      attr_accessor :notify
      validates :notify, type: TypeGeneric.new(String)
      attr_accessor :async
      validates :async, type: Integer
      attr_accessor :poll
      validates :poll, type: Integer
      attr_accessor :ignore_errors
      # attribute :ignore_errors, type: [TrueClass, FalseClass]

      def to_h
        result = super
        # Module gets referenced by name
        mod = result.delete 'module'
        notify = result.delete 'notify'
        # Module traditionally goes right after name, so rebuilding hash
        new_result = {
          'name' => result.delete('name')
        }
        new_result.merge! mod
        result.each do |key, value|
          new_result[key] = value
        end
        new_result['notify'] = [*notify] if notify
        new_result
      end

      private

      def validate(args)
        raise 'You forgot to supply a module to run!' unless args[:module]
        super
      end
    end
  end
end
