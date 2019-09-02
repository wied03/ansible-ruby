# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages MySQL server replication, slave, master status get and change master host.
      class Mysql_replication < Base
        # @return [:getslave, :getmaster, :changemaster, :stopslave, :startslave, :resetslave, :resetslaveall, nil] module operating mode. Could be getslave (SHOW SLAVE STATUS), getmaster (SHOW MASTER STATUS), changemaster (CHANGE MASTER TO), startslave (START SLAVE), stopslave (STOP SLAVE), resetslave (RESET SLAVE), resetslaveall (RESET SLAVE ALL)
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:getslave, :getmaster, :changemaster, :stopslave, :startslave, :resetslave, :resetslaveall], :message=>"%{value} needs to be :getslave, :getmaster, :changemaster, :stopslave, :startslave, :resetslave, :resetslaveall"}, allow_nil: true

        # @return [String, nil] same as mysql variable
        attribute :master_host
        validates :master_host, type: String

        # @return [Object, nil] same as mysql variable
        attribute :master_user

        # @return [Object, nil] same as mysql variable
        attribute :master_password

        # @return [Object, nil] same as mysql variable
        attribute :master_port

        # @return [Object, nil] same as mysql variable
        attribute :master_connect_retry

        # @return [String, nil] same as mysql variable
        attribute :master_log_file
        validates :master_log_file, type: String

        # @return [Integer, nil] same as mysql variable
        attribute :master_log_pos
        validates :master_log_pos, type: Integer

        # @return [Object, nil] same as mysql variable
        attribute :relay_log_file

        # @return [Object, nil] same as mysql variable
        attribute :relay_log_pos

        # @return [0, 1, nil] same as mysql variable
        attribute :master_ssl
        validates :master_ssl, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] same as mysql variable
        attribute :master_ssl_ca

        # @return [Object, nil] same as mysql variable
        attribute :master_ssl_capath

        # @return [Object, nil] same as mysql variable
        attribute :master_ssl_cert

        # @return [Object, nil] same as mysql variable
        attribute :master_ssl_key

        # @return [Object, nil] same as mysql variable
        attribute :master_ssl_cipher

        # @return [Object, nil] does the host uses GTID based replication or not
        attribute :master_auto_position
      end
    end
  end
end
