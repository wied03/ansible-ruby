# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Supervisorctl < Base
        # @return [String] The name of the supervisord program or group to manage.,The name will be taken as group name when it ends with a colon I(:),Group support is only available in Ansible version 1.6 or later.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The supervisor configuration file path
        attribute :config
        validates :config, type: String

        # @return [String] URL on which supervisord server is listening
        attribute :server_url
        validates :server_url, type: String

        # @return [String] username to use for authentication
        attribute :username
        validates :username, type: String

        # @return [String] password to use for authentication
        attribute :password
        validates :password, type: String

        # @return [String] The desired state of program/group.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :started, :stopped, :restarted, :absent], :message=>"%{value} needs to be :present, :started, :stopped, :restarted, :absent"}

        # @return [Object] path to supervisorctl executable
        attribute :supervisorctl_path
      end
    end
  end
end