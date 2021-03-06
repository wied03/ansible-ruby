# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # When the user does not exist in Gitlab, it will be created.
      # When the user does exists and state=absent, the user will be deleted.
      # When changes are made to user, the user will be updated.
      class Gitlab_user < Base
        # @return [String] Url of Gitlab server, with protocol (http or https).
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [:yes, :no, nil] When using https if SSL certificate needs to be verified.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Gitlab user name.
        attribute :login_user
        validates :login_user, type: String

        # @return [String, nil] Gitlab password for login_user
        attribute :login_password
        validates :login_password, type: String

        # @return [String, nil] Gitlab token for logging in.
        attribute :login_token
        validates :login_token, type: String

        # @return [String] Name of the user you want to create
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The username of the user.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] The password of the user.,GitLab server enforces minimum password length to 8, set this value with 8 or more characters.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] The email that belongs to the user.
        attribute :email
        validates :email, presence: true, type: String

        # @return [String, nil] The name of the sshkey
        attribute :sshkey_name
        validates :sshkey_name, type: String

        # @return [String, nil] The ssh key itself.
        attribute :sshkey_file
        validates :sshkey_file, type: String

        # @return [Object, nil] Add user as an member to this group.
        attribute :group

        # @return [Object, nil] The access level to the group. One of the following can be used.,guest,reporter,developer,master,owner
        attribute :access_level

        # @return [:present, :absent, nil] create or delete group.,Possible values are present and absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Require confirmation.
        attribute :confirm
        validates :confirm, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
