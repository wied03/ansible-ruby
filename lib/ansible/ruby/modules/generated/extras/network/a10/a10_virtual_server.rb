# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class A10_virtual_server < Base
        # @return [String] hostname or ip of your A10 Networks device
        attribute :host
        validates :host, presence: true, type: String

        # @return [String] admin account of your A10 Networks device
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] admin password of your A10 Networks device
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] slb virtual server name
        attribute :virtual_server
        validates :virtual_server, presence: true, type: String

        # @return [String, nil] slb virtual server ip address
        attribute :virtual_server_ip
        validates :virtual_server_ip, type: String

        # @return [:enabled, :disabled, nil] slb virtual server status
        attribute :virtual_server_status
        validates :virtual_server_status, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Array<Hash>, nil] A list of ports to create for the virtual server. Each list item should be a dictionary which specifies the C(port:) and C(type:), but can also optionally specify the C(service_group:) as well as the C(status:). See the examples below for details. This parameter is required when C(state) is C(present).
        attribute :virtual_server_ports
        validates :virtual_server_ports, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] If C(yes), any changes will cause a write of the running configuration to non-volatile memory. This will save I(all) configuration changes, including those that may have been made manually or through other modules, so care should be taken when specifying C(yes).
        attribute :write_config
        validates :write_config, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
