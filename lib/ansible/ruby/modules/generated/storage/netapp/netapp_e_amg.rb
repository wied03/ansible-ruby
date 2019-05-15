# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for the creation, removal and updating of Asynchronous Mirror Groups for NetApp E-series storage arrays
      class Netapp_e_amg < Base
        # @return [String] The name of the async array you wish to target, or create.,If C(state) is present and the name isn't found, it will attempt to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The ID of the secondary array to be used in mirroing process
        attribute :secondaryArrayId
        validates :secondaryArrayId, presence: true, type: String

        # @return [Integer, nil] The synchronization interval in minutes
        attribute :syncIntervalMinutes
        validates :syncIntervalMinutes, type: Integer

        # @return [String, nil] Setting this to true will cause other synchronization values to be ignored
        attribute :manualSync
        validates :manualSync, type: String

        # @return [Integer, nil] Recovery point warning threshold (minutes). The user will be warned when the age of the last good failures point exceeds this value
        attribute :recoveryWarnThresholdMinutes
        validates :recoveryWarnThresholdMinutes, type: Integer

        # @return [Integer, nil] Recovery point warning threshold
        attribute :repoUtilizationWarnThreshold
        validates :repoUtilizationWarnThreshold, type: Integer

        # @return [:iscsi, :fibre, nil] The intended protocol to use if both Fibre and iSCSI are available.
        attribute :interfaceType
        validates :interfaceType, inclusion: {:in=>[:iscsi, :fibre], :message=>"%{value} needs to be :iscsi, :fibre"}, allow_nil: true

        # @return [Integer, nil] The threshold (in minutes) for notifying the user that periodic synchronization has taken too long to complete.
        attribute :syncWarnThresholdMinutes
        validates :syncWarnThresholdMinutes, type: Integer

        # @return [:absent, :present] A C(state) of present will either create or update the async mirror group.,A C(state) of absent will remove the async mirror group.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}
      end
    end
  end
end
