# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove a floating IP to an instance
      class Os_floating_ip < Base
        # @return [String] The name or ID of the instance to which the IP address should be assigned.
        attribute :server
        validates :server, presence: true, type: String

        # @return [String, nil] The name or ID of a neutron external network or a nova pool name.
        attribute :network
        validates :network, type: String

        # @return [String, nil] A floating IP address to attach or to detach. Required only if I(state) is absent. When I(state) is present can be used to specify a IP address to attach.
        attribute :floating_ip_address
        validates :floating_ip_address, type: String

        # @return [:yes, :no, nil] When I(state) is present, and I(floating_ip_address) is not present, this parameter can be used to specify whether we should try to reuse a floating IP address already allocated to the project.
        attribute :reuse
        validates :reuse, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] To which fixed IP of server the floating IP address should be attached to.
        attribute :fixed_address
        validates :fixed_address, type: String

        # @return [String, nil] The name or id of a neutron private network that the fixed IP to attach floating IP is on
        attribute :nat_destination
        validates :nat_destination, type: String

        # @return [:yes, :no, nil] When attaching a floating IP address, specify whether we should wait for it to appear as attached.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Time to wait for an IP address to appear as attached. See wait.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] When I(state) is absent, indicates whether or not to delete the floating IP completely, or only detach it from the server. Default is to detach only.
        attribute :purge
        validates :purge, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
