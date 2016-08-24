# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Zabbix_host < Base
        # @return [String] Url of Zabbix server, with protocol (http or https).
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [String] Zabbix user name, used to authenticate against the server.
        attribute :login_user
        validates :login_user, presence: true, type: String

        # @return [String] Zabbix user password.
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [Object, nil] Basic Auth login
        attribute :http_login_user

        # @return [Object, nil] Basic Auth password
        attribute :http_login_password

        # @return [String] Name of the host in Zabbix.,host_name is the unique identifier used and cannot be updated using this module.
        attribute :host_name
        validates :host_name, presence: true, type: String

        # @return [Array<String>, String, nil] List of host groups the host is part of.
        attribute :host_groups
        validates :host_groups, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of templates linked to the host.
        attribute :link_templates
        validates :link_templates, type: TypeGeneric.new(String)

        # @return [:automatic, :manual, :disabled, nil] Configure the inventory mode.
        attribute :inventory_mode
        validates :inventory_mode, inclusion: {:in=>[:automatic, :manual, :disabled], :message=>"%{value} needs to be :automatic, :manual, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Monitoring status of the host.
        attribute :status
        validates :status, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:present, :absent, nil] State of the host.,On C(present), it will create if host does not exist or update the host if the associated data is different.,On C(absent) will remove a host if it exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] The timeout of API request (seconds).
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] The name of the Zabbix Proxy to be used
        attribute :proxy
        validates :proxy, type: String

        # @return [Object, nil] List of interfaces to be created for the host (see example below).,Available values are: dns, ip, main, port, type and useip.,Please review the interface documentation for more information on the supported properties,https://www.zabbix.com/documentation/2.0/manual/appendix/api/hostinterface/definitions#host_interface
        attribute :interfaces

        # @return [:yes, :no, nil] Overwrite the host configuration, even if already present
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
