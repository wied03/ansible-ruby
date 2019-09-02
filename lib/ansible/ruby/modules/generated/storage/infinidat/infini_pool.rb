# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module to creates, deletes or modifies pools on Infinibox.
      class Infini_pool < Base
        # @return [String] Pool Name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Creates/Modifies Pool when present or removes when absent
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Pool Physical Capacity in MB, GB or TB units. If pool size is not set on pool creation, size will be equal to 1TB. See examples.
        attribute :size
        validates :size, type: String

        # @return [String, nil] Pool Virtual Capacity in MB, GB or TB units. If pool vsize is not set on pool creation, Virtual Capacity will be equal to Physical Capacity. See examples.
        attribute :vsize
        validates :vsize, type: String

        # @return [Boolean, nil] Enable/Disable SSD Cache on Pool
        attribute :ssd_cache
        validates :ssd_cache, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
