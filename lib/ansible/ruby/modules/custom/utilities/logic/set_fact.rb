# frozen_string_literal: true
# VALIDATED_CHECKSUM: jeltXEzVokfg8s9HHrEoud7sKIRzUS4vmA3QVeazoo0=
require 'ansible/ruby/modules/generated/utilities/logic/set_fact'
require 'ansible/ruby/modules/free_form'

module Ansible
  module Ruby
    module Modules
      class Set_fact
        # key_value is on the module but it really needs to function like free_form
        attribute :free_form
        include FreeForm
        remove_existing_validations :key_value
        remove_existing_validations :free_form
        # free_form is usually a Hash
        validates :free_form,
                  type: {
                    type: Hash,
                    message: 'set_fact(%{value}), %{value} is expected to be a Hash but was a %{type}'
                  }
      end
    end
  end
end
