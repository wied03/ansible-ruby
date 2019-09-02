# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, deletes or modifies volume on Infinibox.
      class Infini_vol < Base
        # @return [String] Volume Name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Creates/Modifies volume when present or removes when absent
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Volume size in MB, GB or TB units. See examples.
        attribute :size
        validates :size, type: String

        # @return [String] Pool that volume will reside on
        attribute :pool
        validates :pool, presence: true, type: String
      end
    end
  end
end
