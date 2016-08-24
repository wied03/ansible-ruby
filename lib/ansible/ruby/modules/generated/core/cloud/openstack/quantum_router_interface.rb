# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Quantum_router_interface < Base
        # @return [String] login username to authenticate to keystone
        attribute :login_username
        validates :login_username, presence: true, type: String

        # @return [String] Password of login user
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [String] The tenant name of the login user
        attribute :login_tenant_name
        validates :login_tenant_name, presence: true, type: String

        # @return [String, nil] The keystone URL for authentication
        attribute :auth_url
        validates :auth_url, type: String

        # @return [Object, nil] Name of the region
        attribute :region_name

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the router to which the subnet's interface should be attached.
        attribute :router_name
        validates :router_name, presence: true, type: String

        # @return [String] Name of the subnet to whose interface should be attached to the router.
        attribute :subnet_name
        validates :subnet_name, presence: true, type: String

        # @return [String, nil] Name of the tenant whose subnet has to be attached.
        attribute :tenant_name
        validates :tenant_name, type: String
      end
    end
  end
end
