# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, deletes or modifies filesystems on Infinibox.
      class Infini_fs < Base
        # @return [String] File system name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Creates/Modifies file system when present or removes when absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] File system size in MB, GB or TB units. See examples.
        attribute :size
        validates :size, type: String

        # @return [String] Pool that will host file system.
        attribute :pool
        validates :pool, presence: true, type: String
      end
    end
  end
end
