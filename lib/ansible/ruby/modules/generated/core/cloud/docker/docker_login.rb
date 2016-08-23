# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
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

        # @return [TrueClass, nil] Refresh exiting authentication found in the configuration file.
        attribute :reauthorize
        validates :reauthorize, type: TrueClass

        # @return [String, nil] Custom path to the Docker CLI configuration file.
        attribute :config_path
        validates :config_path, type: String
      end
    end
  end
end
