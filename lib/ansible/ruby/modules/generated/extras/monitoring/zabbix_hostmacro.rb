# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Zabbix_hostmacro < Base
        # @return [String] Url of Zabbix server, with protocol (http or https).
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

        # @return [String] Name of the host.
        attribute :host_name
        validates :host_name, presence: true, type: String

        # @return [String] Name of the host macro.
        attribute :macro_name
        validates :macro_name, presence: true, type: String

        # @return [String] Value of the host macro.
        attribute :macro_value
        validates :macro_value, presence: true, type: String

        # @return [:present, :absent, nil] State of the macro.,On C(present), it will create if macro does not exist or update the macro if the associated data is different.,On C(absent) will remove a macro if it exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] The timeout of API request (seconds).
        attribute :timeout
        validates :timeout, type: Fixnum
      end
    end
  end
end
