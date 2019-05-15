# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage port channel interface policies on Cisco ACI fabrics.
      class Aci_interface_policy_port_channel < Base
        # @return [String] Name of the port channel.
        attribute :port_channel
        validates :port_channel, presence: true, type: String

        # @return [String, nil] The description for the port channel.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Maximum links.,Accepted values range between 1 and 16.,The APIC defaults to C(16) when unset during creation.
        attribute :max_links
        validates :max_links, type: String

        # @return [String, nil] Minimum links.,Accepted values range between 1 and 16.,The APIC defaults to C(1) when unset during creation.
        attribute :min_links
        validates :min_links, type: String

        # @return [:active, :"mac-pin", :"mac-pin-nicload", :off, :passive, nil] Port channel interface policy mode.,Determines the LACP method to use for forming port-channels.,The APIC defaults to C(off) when unset during creation.
        attribute :mode
        validates :mode, inclusion: {:in=>[:active, :"mac-pin", :"mac-pin-nicload", :off, :passive], :message=>"%{value} needs to be :active, :\"mac-pin\", :\"mac-pin-nicload\", :off, :passive"}, allow_nil: true

        # @return [Object, nil] Determines if Fast Select is enabled for Hot Standby Ports.,This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.,The APIC defaults to C(yes) when unset during creation.
        attribute :fast_select

        # @return [Object, nil] Determines if Graceful Convergence is enabled.,This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.,The APIC defaults to C(yes) when unset during creation.
        attribute :graceful_convergence

        # @return [Object, nil] Determines if Load Defer is enabled.,This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.,The APIC defaults to C(no) when unset during creation.
        attribute :load_defer

        # @return [Object, nil] Determines if Suspend Individual is enabled.,This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.,The APIC defaults to C(yes) when unset during creation.
        attribute :suspend_individual

        # @return [Object, nil] Determines if Symmetric Hashing is enabled.,This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.,The APIC defaults to C(no) when unset during creation.
        attribute :symmetric_hash

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
