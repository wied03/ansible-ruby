# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of LLDP interfaces configuration on VyOS network devices.
      class Vyos_lldp_interface < Base
        # @return [Object, nil] Name of the interface LLDP should be configured on.
        attribute :name

        # @return [Array<Hash>, Hash, nil] List of interfaces LLDP should be configured on.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, :enabled, :disabled, nil] State of the LLDP configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
