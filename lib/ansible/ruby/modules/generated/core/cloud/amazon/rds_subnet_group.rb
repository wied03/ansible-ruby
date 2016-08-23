# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rds_subnet_group < Base
        # @return [String] Specifies whether the subnet should be present or absent.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Database subnet group identifier.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Database subnet group description. Only set when a new group is added.
        attribute :description
        validates :description, type: String

        # @return [Array] List of subnet IDs that make up the database subnet group.
        attribute :subnets
        validates :subnets, type: Array
      end
    end
  end
end
