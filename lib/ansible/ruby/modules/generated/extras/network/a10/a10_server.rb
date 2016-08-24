# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class A10_server < Base
        # @return [String] hostname or ip of your A10 Networks device
        attribute :host
        validates :host, presence: true, type: String

        # @return [String] admin account of your A10 Networks device
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] admin password of your A10 Networks device
        attribute :password
        validates :password, presence: true, type: String

        # @return [Object] slb server name
        attribute :server_name
        validates :server_name, presence: true

        # @return [String, nil] slb server IP address
        attribute :server_ip
        validates :server_ip, type: String

        # @return [:enabled, :disabled, nil] slb virtual server status
        attribute :server_status
        validates :server_status, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of ports to create for the server. Each list item should be a dictionary which specifies the C(port:) and C(protocol:), but can also optionally specify the C(status:). See the examples below for details. This parameter is required when C(state) is C(present).
        attribute :server_ports
        validates :server_ports, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] create, update or remove slb server
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
