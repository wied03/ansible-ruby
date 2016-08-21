module Ansible
  module Ruby
    class Task < BaseModel
      attr_accessor :name
      #attribute :name, required: true, type: String
      #attribute :module, required: true
      # attribute :register, type: String
      # attribute :become, type: [TrueClass, FalseClass]
      # attribute :become_user, type: String
      # attribute :changed_when, type: String
      # attribute :failed_when, type: String
      # attribute :when, type: String
      # attribute :with_dict, type: String
      # attribute :notify, type: [Array, String]
      # attribute :async, type: Integer
      # attribute :poll, type: Integer
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
