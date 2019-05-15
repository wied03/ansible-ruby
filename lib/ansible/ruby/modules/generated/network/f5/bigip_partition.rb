# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP partitions.
      class Bigip_partition < Base
        # @return [String] Name of the partition
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description to attach to the Partition.
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] The default Route Domain to assign to the Partition. If no route domain is specified, then the default route domain for the system (typically zero) will be used only when creating a new partition.
        attribute :route_domain
        validates :route_domain, type: Integer

        # @return [:present, :absent, nil] Whether the partition should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
