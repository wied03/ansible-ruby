# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of MySQL Database.
      class Azure_rm_mysqldatabase < Base
        # @return [String] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the server.
        attribute :server_name
        validates :server_name, presence: true, type: String

        # @return [String] The name of the database.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The charset of the database. Check MySQL documentation for possible values.,This is only set on creation, use I(force_update) to recreate a database if the values don't match.
        attribute :charset

        # @return [Object, nil] The collation of the database. Check MySQL documentation for possible values.,This is only set on creation, use I(force_update) to recreate a database if the values don't match.
        attribute :collation

        # @return [:yes, :no, nil] When set to C(true), will delete and recreate the existing MySQL database if any of the properties don't match what is set.,When set to C(false), no change will occur to the database even if any of the properties do not match.
        attribute :force_update
        validates :force_update, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:absent, :present, nil] Assert the state of the MySQL Database. Use 'present' to create or update a database and 'absent' to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
