# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts of PostgreSQL Database.
      class Azure_rm_postgresqldatabase_facts < Base
        # @return [String] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the server.
        attribute :server_name
        validates :server_name, presence: true, type: String

        # @return [String, nil] The name of the database.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
