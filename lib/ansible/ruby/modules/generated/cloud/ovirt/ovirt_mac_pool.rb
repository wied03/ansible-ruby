# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manage MAC pools in oVirt/RHV.
      class Ovirt_mac_pool < Base
        # @return [String] Name of the MAC pool to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Description of the MAC pool.
        attribute :description

        # @return [:present, :absent, nil] Should the mac pool be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Symbol, nil] If I(true) allow a MAC address to be used multiple times in a pool.,Default value is set by oVirt/RHV engine to I(false).
        attribute :allow_duplicates
        validates :allow_duplicates, type: Symbol

        # @return [Array<String>, String, nil] List of MAC ranges. The from and to should be split by comma.,For example: 00:1a:4a:16:01:51,00:1a:4a:16:01:61
        attribute :ranges
        validates :ranges, type: TypeGeneric.new(String)
      end
    end
  end
end
