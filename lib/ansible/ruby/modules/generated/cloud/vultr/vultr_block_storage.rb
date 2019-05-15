# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage block storage volumes on Vultr.
      class Vultr_block_storage < Base
        # @return [String] Name of the block storage volume.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] Size of the block storage volume in GB.
        attribute :size
        validates :size, presence: true, type: Integer

        # @return [String] Region the block storage volume is deployed into.
        attribute :region
        validates :region, presence: true, type: String

        # @return [:present, :absent, nil] State of the block storage volume.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
