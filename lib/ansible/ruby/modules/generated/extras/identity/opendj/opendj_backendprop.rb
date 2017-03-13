# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will update settings for OpenDJ with the command set-backend-prop.
      # It will check first via de get-backend-prop if configuration needs to be applied.
      class Opendj_backendprop < Base
        # @return [String, nil] The path to the bin directory of OpenDJ.
        attribute :opendj_bindir
        validates :opendj_bindir, type: String

        # @return [String] The hostname of the OpenDJ server.
        attribute :hostname
        validates :hostname, presence: true, type: String

        # @return [String] The Admin port on which the OpenDJ instance is available.
        attribute :port
        validates :port, presence: true, type: String

        # @return [String, nil] The username to connect to.
        attribute :username
        validates :username, type: String

        # @return [String, nil] The password for the cn=Directory Manager user.,Either password or passwordfile is needed.
        attribute :password
        validates :password, type: String

        # @return [Object, nil] Location to the password file which holds the password for the cn=Directory Manager user.,Either password or passwordfile is needed.
        attribute :passwordfile

        # @return [String] The name of the backend on which the property needs to be updated.
        attribute :backend
        validates :backend, presence: true, type: String

        # @return [String] The configuration setting to update.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The value for the configuration item.
        attribute :value
        validates :value, presence: true, type: String

        # @return [String, nil] If configuration needs to be added/updated
        attribute :state
        validates :state, type: String
      end
    end
  end
end
