# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vertica_configuration < Base
        # @return [String] Name of the parameter to update.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Value of the parameter to be set.
        attribute :value
        validates :value, presence: true, type: String

        # @return [Object] Name of the Vertica database.
        attribute :db

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
