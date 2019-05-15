# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of link aggregation groups on Juniper JUNOS network devices.
      class Junos_linkagg < Base
        # @return [String] Name of the link aggregation group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] Mode of the link aggregation group. A value of C(on) will enable LACP in C(passive) mode. C(active) configures the link to actively information about the state of the link, or it can be configured in C(passive) mode ie. send link state information only when received them from another link. A value of C(off) will disable LACP.
        attribute :mode
        validates :mode, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String] List of members interfaces of the link aggregation group. The value can be single interface or list of interfaces.
        attribute :members
        validates :members, presence: true, type: TypeGeneric.new(String)

        # @return [Object, nil] Minimum members that should be up before bringing up the link aggregation group.
        attribute :min_links

        # @return [Integer, nil] Number of aggregated ethernet devices that can be configured. Acceptable integer value is between 1 and 128.
        attribute :device_count
        validates :device_count, type: Integer

        # @return [Object, nil] Description of Interface.
        attribute :description

        # @return [Object, nil] List of link aggregation definitions.
        attribute :aggregate

        # @return [:present, :absent, :up, :down, nil] State of the link aggregation group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :up, :down], :message=>"%{value} needs to be :present, :absent, :up, :down"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
