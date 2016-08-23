# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Zabbix_group < Base
        # @return [String] Url of Zabbix server, with protocol (http or https). C(url) is an alias for C(server_url).
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [String] Zabbix user name.
        attribute :login_user
        validates :login_user, presence: true, type: String

        # @return [String] Zabbix user password.
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [String] Basic Auth login
        attribute :http_login_user
        validates :http_login_user, type: String

        # @return [String] Basic Auth password
        attribute :http_login_password
        validates :http_login_password, type: String

        # @return [:present, :absent, nil] Create or delete host group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] The timeout of API request(seconds).
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [Array] List of host groups to create or delete.
        attribute :host_groups
        validates :host_groups, presence: true, type: Array
      end
    end
  end
end
