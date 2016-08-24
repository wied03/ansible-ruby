# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Quantum_router < Base
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

        # @return [String] Name to be give to the router
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Name of the tenant for which the router has to be created, if none router would be created for the login tenant.
        attribute :tenant_name

        # @return [Boolean, nil] desired admin state of the created router .
        attribute :admin_state_up
        validates :admin_state_up, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
