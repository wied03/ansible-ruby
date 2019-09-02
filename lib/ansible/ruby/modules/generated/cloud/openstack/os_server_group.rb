# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove server groups from OpenStack.
      class Os_server_group < Base
        # @return [:present, :absent, nil] Indicate desired state of the resource. When I(state) is 'present', then I(policies) is required.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Server group name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String, nil] A list of one or more policy names to associate with the server group. The list must contain at least one policy name. The current valid policy names are anti-affinity, affinity, soft-anti-affinity and soft-affinity.
        attribute :policies
        validates :policies, type: TypeGeneric.new(String)

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
