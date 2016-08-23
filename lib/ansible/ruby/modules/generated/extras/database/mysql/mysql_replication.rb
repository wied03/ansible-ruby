# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Mysql_replication < Base
        # @return [String] module operating mode. Could be getslave (SHOW SLAVE STATUS), getmaster (SHOW MASTER STATUS), changemaster (CHANGE MASTER TO), startslave (START SLAVE), stopslave (STOP SLAVE), resetslave (RESET SLAVE), resetslaveall (RESET SLAVE ALL)
        attribute :mode
        validates :mode, inclusion: {:in=>[:getslave, :getmaster, :changemaster, :stopslave, :startslave, :resetslave, :resetslaveall], :message=>"%{value} needs to be :getslave, :getmaster, :changemaster, :stopslave, :startslave, :resetslave, :resetslaveall"}, allow_nil: true

        # @return [String] same as mysql variable
        attribute :master_host
        validates :master_host, type: String

        # @return [Object] same as mysql variable
        attribute :master_user

        # @return [Object] same as mysql variable
        attribute :master_password

        # @return [Object] same as mysql variable
        attribute :master_port

        # @return [Object] same as mysql variable
        attribute :master_connect_retry

        # @return [String] same as mysql variable
        attribute :master_log_file
        validates :master_log_file, type: String

        # @return [String] same as mysql variable
        attribute :master_log_pos
        validates :master_log_pos, type: String

        # @return [Object] same as mysql variable
        attribute :relay_log_file

        # @return [Object] same as mysql variable
        attribute :relay_log_pos

        # @return [Object] same as mysql variable
        attribute :master_ssl
        validates :master_ssl, inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object] same as mysql variable
        attribute :master_ssl_ca

        # @return [Object] same as mysql variable
        attribute :master_ssl_capath

        # @return [Object] same as mysql variable
        attribute :master_ssl_cert

        # @return [Object] same as mysql variable
        attribute :master_ssl_key

        # @return [Object] same as mysql variable
        attribute :master_ssl_cipher

        # @return [Object] does the host uses GTID based replication or not
        attribute :master_auto_position
      end
    end
  end
end
