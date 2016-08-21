module Ansible
  module Ruby
    class Task < BasicUnit
      attribute :module, required: true
      attribute :register
      attribute :become
      attribute :become_user
      attribute :changed_when
      attribute :notify, array: true
    end
  end
end
