# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_staticnat < Base
        # @return [String] Public IP address the static NAT is assigned to.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] Name of virtual machine which we make the static NAT for.,Required if C(state=present).
        attribute :vm
        validates :vm, type: String

        # @return [Object] VM guest NIC secondary IP address for the static NAT.
        attribute :vm_guest_ip

        # @return [:present, :absent, nil] State of the static NAT.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Domain the static NAT is related to.
        attribute :domain

        # @return [Object] Account the static NAT is related to.
        attribute :account

        # @return [Object] Name of the project the static NAT is related to.
        attribute :project

        # @return [Object] Name of the zone in which the virtual machine is in.,If not set, default zone is used.
        attribute :zone

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end
