# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gitlab_user < Base
        # @return [String] Url of Gitlab server, with protocol (http or https).
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [TrueClass] When using https if SSL certificate needs to be verified.
        attribute :validate_certs
        validates :validate_certs, type: TrueClass

        # @return [String] Gitlab user name.
        attribute :login_user
        validates :login_user, type: String

        # @return [String] Gitlab password for login_user
        attribute :login_password
        validates :login_password, type: String

        # @return [String] Gitlab token for logging in.
        attribute :login_token
        validates :login_token, type: String

        # @return [String] Name of the user you want to create
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The username of the user.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] The password of the user.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] The email that belongs to the user.
        attribute :email
        validates :email, presence: true, type: String

        # @return [String] The name of the sshkey
        attribute :sshkey_name
        validates :sshkey_name, type: String

        # @return [String] The ssh key itself.
        attribute :sshkey_file
        validates :sshkey_file, type: String

        # @return [Object] Add user as an member to this group.
        attribute :group

        # @return [Object] The access level to the group. One of the following can be used.,guest,reporter,developer,master,owner
        attribute :access_level

        # @return [String] create or delete group.,Possible values are present and absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
