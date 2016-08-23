# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_cdb_user < Base
        # @return [Object] The databases server UUID
        attribute :cdb_id

        # @return [Object] Name of the database user
        attribute :db_username

        # @return [Object] Database user password
        attribute :db_password

        # @return [Array] Name of the databases that the user can access
        attribute :databases
        validates :databases, type: Array

        # @return [String] Specifies the host from which a user is allowed to connect to the database. Possible values are a string containing an IPv4 address or "%" to allow connecting from any host
        attribute :host
        validates :host, type: String

        # @return [String] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
