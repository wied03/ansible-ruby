# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vertica_schema < Base
        # @return [String] Name of the schema to add or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>] Comma separated list of roles to create and grant usage access to the schema.
        attribute :usage_roles, flat_array: true
        validates :usage_roles, type: TypeGeneric.new(String)

        # @return [String] Comma separated list of roles to create and grant usage and create access to the schema.
        attribute :create_roles
        validates :create_roles, type: String

        # @return [String] Name of the user to set as owner of the schema.
        attribute :owner
        validates :owner, type: String

        # @return [String] Whether to create C(present), or drop C(absent) a schema.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the Vertica database.
        attribute :db
        validates :db, type: String

        # @return [String] Name of the Vertica cluster.
        attribute :cluster
        validates :cluster, type: String

        # @return [Fixnum] Vertica cluster port to connect to.
        attribute :port
        validates :port, type: Fixnum

        # @return [String] The username used to authenticate with.
        attribute :login_user
        validates :login_user, type: String

        # @return [Object] The password used to authenticate with.
        attribute :login_password
      end
    end
  end
end