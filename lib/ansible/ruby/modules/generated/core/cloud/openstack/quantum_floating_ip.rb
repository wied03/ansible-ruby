# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove a floating IP to an instance
      class Quantum_floating_ip < Base
        # @return [String] login username to authenticate to keystone
        attribute :login_username
        validates :login_username, presence: true, type: String

        # @return [String] Password of login user
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [String] The tenant name of the login user
        attribute :login_tenant_name
        validates :login_tenant_name, presence: true, type: String

        # @return [String, nil] The keystone url for authentication
        attribute :auth_url
        validates :auth_url, type: String

        # @return [Object, nil] Name of the region
        attribute :region_name

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the network from which IP has to be assigned to VM. Please make sure the network is an external network
        attribute :network_name
        validates :network_name, presence: true, type: String

        # @return [String] The name of the instance to which the IP address should be assigned
        attribute :instance_name
        validates :instance_name, presence: true, type: String

        # @return [String, nil] The name of the network of the port to associate with the floating ip. Necessary when VM multiple networks.
        attribute :internal_network_name
        validates :internal_network_name, type: String
      end
    end
  end
end
