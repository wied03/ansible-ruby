# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # creates / deletes or resize a Rackspace Cloud Databases instance and optionally waits for it to be 'running'. The name option needs to be unique since it's used to identify the instance.
      class Rax_cdb < Base
        # @return [String, nil] Name of the databases server instance
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] flavor to use for the instance 1 to 6 (i.e. 512MB to 16GB)
        attribute :flavor
        validates :flavor, type: Integer

        # @return [Integer, nil] Volume size of the database 1-150GB
        attribute :volume
        validates :volume, type: Integer

        # @return [String, nil] type of instance (i.e. MySQL, MariaDB, Percona)
        attribute :cdb_type
        validates :cdb_type, type: String

        # @return [5.1, 5.6, 10, nil] version of database (MySQL supports 5.1 and 5.6, MariaDB supports 10, Percona supports 5.6)
        attribute :cdb_version
        validates :cdb_version, inclusion: {:in=>[5.1, 5.6, 10], :message=>"%{value} needs to be 5.1, 5.6, 10"}, allow_nil: true

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
