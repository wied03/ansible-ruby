# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of PostgreSQL Server.
      class Azure_rm_postgresqlserver < Base
        # @return [String] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the server.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Hash, nil] The SKU (pricing tier) of the server.
        attribute :sku
        validates :sku, type: Hash

        # @return [String, nil] Resource location. If not set, location from the resource group will be used as default.
        attribute :location
        validates :location, type: String

        # @return [Integer, nil] The maximum storage allowed for a server.
        attribute :storage_mb
        validates :storage_mb, type: Integer

        # @return [9.5, 9.6, nil] Server version.
        attribute :version
        validates :version, inclusion: {:in=>[9.5, 9.6], :message=>"%{value} needs to be 9.5, 9.6"}, allow_nil: true

        # @return [Symbol, nil] Enable SSL enforcement.
        attribute :enforce_ssl
        validates :enforce_ssl, type: Symbol

        # @return [String, nil] The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
        attribute :admin_username
        validates :admin_username, type: String

        # @return [String, nil] The password of the administrator login.
        attribute :admin_password
        validates :admin_password, type: String

        # @return [String, nil] Create mode of SQL Server
        attribute :create_mode
        validates :create_mode, type: String

        # @return [:present, :absent, nil] Assert the state of the PostgreSQL server. Use 'present' to create or update a server and 'absent' to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
