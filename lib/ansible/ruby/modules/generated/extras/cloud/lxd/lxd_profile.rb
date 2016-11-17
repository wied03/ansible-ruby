# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Management of LXD profiles
      class Lxd_profile < Base
        # @return [String] Name of a profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The config for the container (e.g. {"limits.memory": "4GB"}). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#patch-3),If the profile already exists and its "config" value in metadata obtained from GET /1.0/profiles/<name> U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#get-19) are different, they this module tries to apply the configurations.,Not all config values are supported to apply the existing profile. Maybe you need to delete and recreate a profile.
        attribute :config

        # @return [Object, nil] The devices for the profile (e.g. {"rootfs": {"path": "/dev/kvm", "type": "unix-char"}). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#patch-3)
        attribute :devices

        # @return [Object, nil] A new name of a profile.,If this parameter is specified a profile will be renamed to this name. See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-11)
        attribute :new_name

        # @return [:present, :absent, nil] Define the state of a profile.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The unix domain socket path or the https URL for the LXD server.
        attribute :url
        validates :url, type: String

        # @return [String, nil] The client certificate key file path.
        attribute :key_file
        validates :key_file, type: String

        # @return [String, nil] The client certificate file path.
        attribute :cert_file
        validates :cert_file, type: String

        # @return [Object, nil] The client trusted password.,You need to set this password on the LXD server before running this module using the following command. lxc config set core.trust_password <some random password> See U(https://www.stgraber.org/2016/04/18/lxd-api-direct-interaction/),If trust_password is set, this module send a request for authentication before sending any requests.
        attribute :trust_password
      end
    end
  end
end
