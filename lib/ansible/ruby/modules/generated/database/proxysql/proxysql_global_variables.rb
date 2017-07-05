# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(proxysql_global_variables) module gets or sets the proxysql global variables.
      class Proxysql_global_variables < Base
        # @return [String] Defines which variable should be returned, or if I(value) is specified which variable should be updated.
        attribute :variable
        validates :variable, presence: true, type: String

        # @return [Integer, nil] Defines a value the variable specified using I(variable) should be set to.
        attribute :value
        validates :value, type: Integer

        # @return [Boolean, nil] Save mysql host config to sqlite db on disk to persist the configuration.
        attribute :save_to_disk
        validates :save_to_disk, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Dynamically load mysql host config to runtime memory.
        attribute :load_to_runtime
        validates :load_to_runtime, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The username used to authenticate to ProxySQL admin interface.
        attribute :login_user
        validates :login_user, type: String

        # @return [String, nil] The password used to authenticate to ProxySQL admin interface.
        attribute :login_password
        validates :login_password, type: String

        # @return [String, nil] The host used to connect to ProxySQL admin interface.
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] The port used to connect to ProxySQL admin interface.
        attribute :login_port
        validates :login_port, type: Integer

        # @return [String, nil] Specify a config file from which login_user and login_password are to be read.
        attribute :config_file
        validates :config_file, type: String
      end
    end
  end
end
