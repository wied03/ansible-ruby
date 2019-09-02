# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages applying ACLs to interfaces.
      class Nxos_acl_interface < Base
        # @return [String] Case sensitive name of the access list (ACL).
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Full name of interface, e.g. I(Ethernet1/1).
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [:ingress, :egress] Direction ACL to be applied in on the interface.
        attribute :direction
        validates :direction, presence: true, expression_inclusion: {:in=>[:ingress, :egress], :message=>"%{value} needs to be :ingress, :egress"}

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
