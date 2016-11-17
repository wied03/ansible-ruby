# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Management of LXD containers
      class Lxd_container < Base
        # @return [String] Name of a container.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The archiecture for the container (e.g. "x86_64" or "i686"). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1)
        attribute :architecture

        # @return [Object, nil] The config for the container (e.g. {"limits.cpu": "2"}). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1),If the container already exists and its "config" value in metadata obtained from GET /1.0/containers/<name> U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#10containersname) are different, they this module tries to apply the configurations.,The key starts with 'volatile.' are ignored for this comparison.,Not all config values are supported to apply the existing container. Maybe you need to delete and recreate a container.
        attribute :config

        # @return [Object, nil] The devices for the container (e.g. { "rootfs": { "path": "/dev/kvm", "type": "unix-char" }). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1)
        attribute :devices

        # @return [Object, nil] Whether or not the container is ephemeral (e.g. true or false). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1)
        attribute :ephemeral

        # @return [Object, nil] The source for the container (e.g. { "type": "image", "mode": "pull", "server": "https://images.linuxcontainers.org", "protocol": "lxd", "alias": "ubuntu/xenial/amd64" }). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1)
        attribute :source

        # @return [:started, :stopped, :restarted, :absent, :frozen, nil] Define the state of a container.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :restarted, :absent, :frozen], :message=>"%{value} needs to be :started, :stopped, :restarted, :absent, :frozen"}, allow_nil: true

        # @return [Integer, nil] A timeout for changing the state of the container.,This is also used as a timeout for waiting until IPv4 addresses are set to the all network interfaces in the container after starting or restarting.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Boolean, nil] If this is true, the M(lxd_container) waits until IPv4 addresses are set to the all network interfaces in the container after starting or restarting.
        attribute :wait_for_ipv4_addresses
        validates :wait_for_ipv4_addresses, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If this is true, the M(lxd_container) forces to stop the container when it stops or restarts the container.
        attribute :force_stop
        validates :force_stop, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

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
