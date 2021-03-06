# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, modifies, and deletes RDS database subnet groups. This module has a dependency on python-boto >= 2.5.
      class Rds_subnet_group < Base
        # @return [:present, :absent] Specifies whether the subnet should be present or absent.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Database subnet group identifier.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Database subnet group description. Only set when a new group is added.
        attribute :description
        validates :description, type: String

        # @return [Array<String>, String, nil] List of subnet IDs that make up the database subnet group.
        attribute :subnets
        validates :subnets, type: TypeGeneric.new(String)
      end
    end
  end
end
