# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides functionality similar to the "docker login" command.
      # Authenticate with a docker registry and add the credentials to your local Docker config file. Adding the credentials to the config files allows future connections to the registry using tools such as Ansible's Docker modules, the Docker CLI and docker-py without needing to provide credentials.
      # Running in check mode will perform the authentication without updating the config file.
      class Docker_login < Base
        # @return [String, nil] The registry URL.
        attribute :registry_url
        validates :registry_url, type: String

        # @return [String] The username for the registry account
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] The plaintext password for the registry account
        attribute :password
        validates :password, presence: true, type: String

        # @return [Object, nil] The email address for the registry account.
        attribute :email

        # @return [:yes, :no, nil] Refresh existing authentication found in the configuration file.
        attribute :reauthorize
        validates :reauthorize, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Custom path to the Docker CLI configuration file.
        attribute :config_path
        validates :config_path, type: String

        # @return [:present, :absent, nil] This controls the current state of the user. C(present) will login in a user, C(absent) will log them out.,To logout you only need the registry server, which defaults to DockerHub.,Before 2.1 you could ONLY log in.,docker does not support 'logout' with a custom config file.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
