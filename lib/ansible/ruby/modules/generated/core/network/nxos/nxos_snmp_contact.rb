# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP contact information.
      class Nxos_snmp_contact < Base
        # @return [String] Contact information.
        attribute :contact
        validates :contact, presence: true, type: String

        # @return [:present, :absent] Manage the state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
