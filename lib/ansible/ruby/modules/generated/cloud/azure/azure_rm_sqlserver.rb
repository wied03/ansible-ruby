# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of SQL Server
      class Azure_rm_sqlserver < Base
        # @return [String] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the server.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Resource location.
        attribute :location
        validates :location, type: String

        # @return [String, nil] Administrator username for the server. Once created it cannot be changed.
        attribute :admin_username
        validates :admin_username, type: String

        # @return [String, nil] The administrator login password (required for server creation).
        attribute :admin_password
        validates :admin_password, type: String

        # @return [Object, nil] The version of the server. For example '12.0'.
        attribute :version

        # @return [Object, nil] The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resour ce. Possible values include: 'SystemAssigned'
        attribute :identity

        # @return [:absent, :present, nil] Assert the state of the SQL server. Use 'present' to create or update a server and 'absent' to delete a server.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
