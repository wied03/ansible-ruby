# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_floating_ip < Base
        # @return [String] The name or ID of the instance to which the IP address should be assigned.
        attribute :server
        validates :server, presence: true, type: String

        # @return [String] The name or ID of a neutron external network or a nova pool name.
        attribute :network
        validates :network, type: String

        # @return [String] A floating IP address to attach or to detach. Required only if I(state) is absent. When I(state) is present can be used to specify a IP address to attach.
        attribute :floating_ip_address
        validates :floating_ip_address, type: String

        # @return [TrueClass] When I(state) is present, and I(floating_ip_address) is not present, this parameter can be used to specify whether we should try to reuse a floating IP address already allocated to the project.
        attribute :reuse
        validates :reuse, type: TrueClass

        # @return [String] To which fixed IP of server the floating IP address should be attached to.
        attribute :fixed_address
        validates :fixed_address, type: String

        # @return [TrueClass] When attaching a floating IP address, specify whether we should wait for it to appear as attached.
        attribute :wait
        validates :wait, type: TrueClass

        # @return [Fixnum] Time to wait for an IP address to appear as attached. See wait.
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [String] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] When I(state) is absent, indicates whether or not to delete the floating IP completely, or only detach it from the server. Default is to detach only.
        attribute :purge
      end
    end
  end
end
