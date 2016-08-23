# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vertica_role < Base
        # @return [String] Name of the role to add or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Comma separated list of roles to assign to the role.
        attribute :assigned_roles

        # @return [:present, :absent, nil] Whether to create C(present), drop C(absent) or lock C(locked) a role.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Name of the Vertica database.
        attribute :db
        validates :db, type: String

        # @return [String, nil] Name of the Vertica cluster.
        attribute :cluster
        validates :cluster, type: String

        # @return [Integer, nil] Vertica cluster port to connect to.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] The username used to authenticate with.
        attribute :login_user
        validates :login_user, type: String

        # @return [Object, nil] The password used to authenticate with.
        attribute :login_password
      end
    end
  end
end
