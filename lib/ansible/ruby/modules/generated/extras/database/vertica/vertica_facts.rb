# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vertica_facts < Base
        # @return [String] Name of the cluster running the schema.
        attribute :cluster
        validates :cluster, type: String

        # @return [Fixnum] Database port to connect to.
        attribute :port
        validates :port, type: Fixnum

        # @return [String] Name of the database running the schema.
        attribute :db
        validates :db, type: String

        # @return [String] The username used to authenticate with.
        attribute :login_user
        validates :login_user, type: String

        # @return [Object] The password used to authenticate with.
        attribute :login_password
      end
    end
  end
end
