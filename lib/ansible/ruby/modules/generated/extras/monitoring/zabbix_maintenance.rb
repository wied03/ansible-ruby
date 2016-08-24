# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Zabbix_maintenance < Base
        # @return [:present, :absent, nil] Create or remove a maintenance window.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Url of Zabbix server, with protocol (http or https). C(url) is an alias for C(server_url).
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [String] Zabbix user name.
        attribute :login_user
        validates :login_user, presence: true, type: String

        # @return [String] Zabbix user password.
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [Object, nil] Basic Auth login
        attribute :http_login_user

        # @return [Object, nil] Basic Auth password
        attribute :http_login_password

        # @return [Array<String>, String, nil] Hosts to manage maintenance window for. Separate multiple hosts with commas. C(host_name) is an alias for C(host_names). B(Required) option when C(state) is I(present) and no C(host_groups) specified.
        attribute :host_names, flat_array: true
        validates :host_names, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Host groups to manage maintenance window for. Separate multiple groups with commas. C(host_group) is an alias for C(host_groups). B(Required) option when C(state) is I(present) and no C(host_names) specified.
        attribute :host_groups, flat_array: true
        validates :host_groups, type: TypeGeneric.new(String)

        # @return [Integer, nil] Length of maintenance window in minutes.
        attribute :minutes
        validates :minutes, type: Integer

        # @return [String] Unique name of maintenance window.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Short description of maintenance window.
        attribute :desc
        validates :desc, presence: true, type: String

        # @return [String, nil] Type of maintenance. With data collection, or without.
        attribute :collect_data
        validates :collect_data, type: String

        # @return [Integer, nil] The timeout of API request (seconds).
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
