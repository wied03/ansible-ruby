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

        # @return [String, nil] The email address for the registry account. NOTE: private registries may not require this, but Docker Hub requires it.
        attribute :email
        validates :email, type: String

        # @return [Boolean, nil] Refresh exiting authentication found in the configuration file.
        attribute :reauthorize
        validates :reauthorize, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Custom path to the Docker CLI configuration file.
        attribute :config_path
        validates :config_path, type: String
      end
    end
  end
end
