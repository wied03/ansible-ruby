# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Junos_netconf < Base
        # @return [Fixnum] This argument specifies the port the netconf service should listen on for SSH connections.  The default port as defined in RFC 6242 is 830.
        attribute :listens_on
        validates :listens_on, presence: true, type: Fixnum

        # @return [String] Specifies the state of the M(junos_netconf) resource on the remote device.  If the O(state) argument is set to I(present) the netconf service will be configured.  If the O(state) argument is set to I(absent) the netconf service will be removed from the configuration.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
