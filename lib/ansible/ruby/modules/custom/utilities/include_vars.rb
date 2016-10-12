require 'ansible/ruby/modules/free_form'

module Ansible
  module Ruby
    module Modules
      class Include_vars < Base
        attribute :free_form
        validates :free_form, presence: true

        include FreeForm
      end
    end
  end
end
