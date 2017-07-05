# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, modifies, and deletes Redshift cluster subnet groups.
      class Redshift_subnet_group < Base
        # @return [:present, :absent, nil] Specifies whether the subnet should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Cluster subnet group name.
        attribute :group_name
        validates :group_name, presence: true

        # @return [Object, nil] Database subnet group description.
        attribute :group_description

        # @return [Object, nil] List of subnet IDs that make up the cluster subnet group.
        attribute :group_subnets
      end
    end
  end
end
