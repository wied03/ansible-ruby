# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gathers Vertica database facts.
      class Vertica_facts < Base
        # @return [String, nil] Name of the cluster running the schema.
        attribute :cluster
        validates :cluster, type: String

        # @return [Integer, nil] Database port to connect to.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] Name of the database running the schema.
        attribute :db
        validates :db, type: String

        # @return [String, nil] The username used to authenticate with.
        attribute :login_user
        validates :login_user, type: String

        # @return [Object, nil] The password used to authenticate with.
        attribute :login_password
      end
    end
  end
end
