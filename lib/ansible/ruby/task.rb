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
        result.merge mod
      end
    end
  end
end
