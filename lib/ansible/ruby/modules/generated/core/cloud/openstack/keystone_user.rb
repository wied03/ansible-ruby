# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage users,tenants, roles from OpenStack.
      class Keystone_user < Base
        # @return [String, nil] login username to authenticate to keystone
        attribute :login_user
        validates :login_user, type: String

        # @return [String, nil] Password of login user
        attribute :login_password
        validates :login_password, type: String

        # @return [Object, nil] The tenant login_user belongs to
        attribute :login_tenant_name

        # @return [Object, nil] The token to be uses in case the password is not specified
        attribute :token

        # @return [String, nil] The keystone url for authentication
        attribute :endpoint
        validates :endpoint, type: String

        # @return [String, nil] The name of the user that has to added/removed from OpenStack
        attribute :user
        validates :user, type: String

        # @return [String, nil] The password to be assigned to the user
        attribute :password
        validates :password, type: String

        # @return [String, nil] The tenant name that has be added/removed
        attribute :tenant
        validates :tenant, type: String

        # @return [String, nil] A description for the tenant
        attribute :tenant_description
        validates :tenant_description, type: String

        # @return [Object, nil] An email address for the user
        attribute :email

        # @return [String, nil] The name of the role to be assigned or created
        attribute :role
        validates :role, type: String

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
