# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes deploy keys for GitHub repositories. Supports authentication using username and password, username and password and 2-factor authentication code (OTP), OAuth2 token, or personal access token.
      class Github_deploy_key < Base
        # @return [String] The name of the individual account or organization that owns the GitHub repository.
        attribute :owner
        validates :owner, presence: true, type: String

        # @return [String] The name of the GitHub repository.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String] The name for the deploy key.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The SSH public key to add to the repository as a deploy key.
        attribute :key
        validates :key, presence: true, type: String

        # @return [String, nil] If C(true), the deploy key will only be able to read repository contents. Otherwise, the deploy key will be able to read and write.
        attribute :read_only
        validates :read_only, type: String

        # @return [:present, :absent, nil] The state of the deploy key.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] If C(true), forcefully adds the deploy key by deleting any existing deploy key with the same public key or title.
        attribute :force
        validates :force, type: String

        # @return [String, nil] The username to authenticate with.
        attribute :username
        validates :username, type: String

        # @return [String, nil] The password to authenticate with. A personal access token can be used here in place of a password.
        attribute :password
        validates :password, type: String

        # @return [String, nil] The OAuth2 token or personal access token to authenticate with. Mutually exclusive with I(password).
        attribute :token
        validates :token, type: String

        # @return [Integer, nil] The 6 digit One Time Password for 2-Factor Authentication. Required together with I(username) and I(password).
        attribute :otp
        validates :otp, type: Integer
      end
    end
  end
end
