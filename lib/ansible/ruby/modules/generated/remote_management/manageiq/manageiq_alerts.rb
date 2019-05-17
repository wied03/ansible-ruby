# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The manageiq_alerts module supports adding, updating and deleting alerts in ManageIQ.
      class Manageiq_alerts < Base
        # @return [:absent, :present, nil] absent - alert should not exist,,present - alert should exist,
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The unique alert description in ManageIQ.,Required when state is "absent" or "present".
        attribute :description
        validates :description, type: String

        # @return [:Vm, :ContainerNode, :MiqServer, :Host, :Storage, :EmsCluster, :ExtManagementSystem, :MiddlewareServer, nil] The entity type for the alert in ManageIQ. Required when state is "present".
        attribute :resource_type
        validates :resource_type, inclusion: {:in=>[:Vm, :ContainerNode, :MiqServer, :Host, :Storage, :EmsCluster, :ExtManagementSystem, :MiddlewareServer], :message=>"%{value} needs to be :Vm, :ContainerNode, :MiqServer, :Host, :Storage, :EmsCluster, :ExtManagementSystem, :MiddlewareServer"}, allow_nil: true

        # @return [:hash, :miq, nil] Expression type.
        attribute :expression_type
        validates :expression_type, inclusion: {:in=>[:hash, :miq], :message=>"%{value} needs to be :hash, :miq"}, allow_nil: true

        # @return [Hash, nil] The alert expression for ManageIQ.,Can either be in the "Miq Expression" format or the "Hash Expression format".,Required if state is "present".
        attribute :expression
        validates :expression, type: Hash

        # @return [Symbol, nil] Enable or disable the alert. Required if state is "present".
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [Hash, nil] Additional alert options, such as notification type and frequency
        attribute :options
        validates :options, type: Hash
      end
    end
  end
end
