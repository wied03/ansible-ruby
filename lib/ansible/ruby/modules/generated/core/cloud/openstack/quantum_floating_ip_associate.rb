# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Quantum_floating_ip_associate < Base
        # @return [String] login username to authenticate to keystone
        attribute :login_username
        validates :login_username, presence: true, type: String

        # @return [String] password of login user
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [Boolean] the tenant name of the login user
        attribute :login_tenant_name
        validates :login_tenant_name, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}

        # @return [String, nil] the keystone url for authentication
        attribute :auth_url
        validates :auth_url, type: String

        # @return [Object, nil] name of the region
        attribute :region_name

        # @return [:present, :absent, nil] indicates the desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] name of the instance to which the public IP should be assigned
        attribute :instance_name
        validates :instance_name, presence: true, type: String

        # @return [String] floating ip that should be assigned to the instance
        attribute :ip_address
        validates :ip_address, presence: true, type: String
      end
    end
  end
end
