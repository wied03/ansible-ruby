# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(proxysql_global_variables) module writes the proxysql configuration settings between layers. Currently this module will always report a changed state, so should typically be used with WHEN however this will change in a future version when the CHECKSUM table commands are available for all tables in proxysql.
      class Proxysql_manage_config < Base
        # @return [:LOAD, :SAVE] The supplied I(action) combines with the supplied I(direction) to provide the semantics of how we want to move the I(config_settings) between the I(config_layers).
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:LOAD, :SAVE], :message=>"%{value} needs to be :LOAD, :SAVE"}

        # @return [:"MYSQL USERS", :"MYSQL SERVERS", :"MYSQL QUERY RULES", :"MYSQL VARIABLES", :"ADMIN VARIABLES", :SCHEDULER] The I(config_settings) specifies which configuration we're writing.
        attribute :config_settings
        validates :config_settings, presence: true, inclusion: {:in=>[:"MYSQL USERS", :"MYSQL SERVERS", :"MYSQL QUERY RULES", :"MYSQL VARIABLES", :"ADMIN VARIABLES", :SCHEDULER], :message=>"%{value} needs to be :\"MYSQL USERS\", :\"MYSQL SERVERS\", :\"MYSQL QUERY RULES\", :\"MYSQL VARIABLES\", :\"ADMIN VARIABLES\", :SCHEDULER"}

        # @return [:FROM, :TO] FROM - denotes we're reading values FROM the supplied I(config_layer) and writing to the next layer. TO - denotes we're reading from the previous layer and writing TO the supplied I(config_layer)."
        attribute :direction
        validates :direction, presence: true, inclusion: {:in=>[:FROM, :TO], :message=>"%{value} needs to be :FROM, :TO"}

        # @return [:MEMORY, :DISK, :RUNTIME, :CONFIG] RUNTIME - represents the in-memory data structures of ProxySQL used by the threads that are handling the requests. MEMORY - (sometimes also referred as main) represents the in-memory SQLite3 database. DISK - represents the on-disk SQLite3 database. CONFIG - is the classical config file. You can only LOAD FROM the config file.
        attribute :config_layer
        validates :config_layer, presence: true, inclusion: {:in=>[:MEMORY, :DISK, :RUNTIME, :CONFIG], :message=>"%{value} needs to be :MEMORY, :DISK, :RUNTIME, :CONFIG"}
      end
    end
  end
end
