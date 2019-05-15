# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The manageiq_alert_profiles module supports adding, updating and deleting alert profiles in ManageIQ.
      class Manageiq_alert_profiles < Base
        # @return [:absent, :present, nil] absent - alert profile should not exist,,present - alert profile should exist,
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The unique alert profile name in ManageIQ.,Required when state is "absent" or "present".
        attribute :name
        validates :name, type: String

        # @return [:Vm, :ContainerNode, :MiqServer, :Host, :Storage, :EmsCluster, :ExtManagementSystem, :MiddlewareServer, nil] The resource type for the alert profile in ManageIQ. Required when state is "present".
        attribute :resource_type
        validates :resource_type, inclusion: {:in=>[:Vm, :ContainerNode, :MiqServer, :Host, :Storage, :EmsCluster, :ExtManagementSystem, :MiddlewareServer], :message=>"%{value} needs to be :Vm, :ContainerNode, :MiqServer, :Host, :Storage, :EmsCluster, :ExtManagementSystem, :MiddlewareServer"}, allow_nil: true

        # @return [Array<String>, String, nil] List of alert descriptions to assign to this profile.,Required if state is "present"
        attribute :alerts
        validates :alerts, type: TypeGeneric.new(String)

        # @return [Object, nil] Optional notes for this profile
        attribute :notes
      end
    end
  end
end
