module Ansible
  module Ruby
    class Task < BasicUnit
      attribute :name, required: true
      attribute :module, required: true
      attribute :register
      attribute :become
      attribute :become_user
      attribute :changed_when
      attribute :notify, array: true

      def to_h
        result = super
        # Module gets referenced by name
        mod = result.delete 'module'
        # Module traditionally goes right after name, so rebuilding hash
        new_result = { 'name' => result.delete('name') }
        new_result.merge! mod
        result.each do |key, value|
          new_result[key] = value
        end
        new_result
      end
    end
  end
end
