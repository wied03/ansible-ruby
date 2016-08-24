# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Zabbix_screen < Base
        # @return [String] Url of Zabbix server, with protocol (http or https).
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

        # @return [Integer, nil] The timeout of API request (seconds).
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Array<Hash>] List of screens to be created/updated/deleted(see example).,If the screen(s) already been added, the screen(s) name won't be updated.,When creating or updating screen(s), C(screen_name), C(host_group) are required.,When deleting screen(s), the C(screen_name) is required.,The available states are: C(present) (default) and C(absent). If the screen(s) already exists, and the state is not C(absent), the screen(s) will just be updated as needed.
        attribute :screens
        validates :screens, presence: true, type: TypeGeneric.new(Hash)
      end
    end
  end
end
