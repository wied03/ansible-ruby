# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gitlab_group < Base
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

        # @return [String] Name of the group you want to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The path of the group you want to create, this will be server_url/group_path,If not supplied, the group_name will be used.
        attribute :path
        validates :path, type: String

        # @return [:present, :absent, nil] create or delete group.,Possible values are present and absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
