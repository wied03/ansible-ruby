# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage End Point (EP) retention protocol policies on Cisco ACI fabrics.
      class Aci_tenant_ep_retention_policy < Base
        # @return [String, nil] The name of an existing tenant.
        attribute :tenant
        validates :tenant, type: String

        # @return [String, nil] The name of the end point retention policy.
        attribute :epr_policy
        validates :epr_policy, type: String

        # @return [Integer, nil] Bounce entry aging interval in seconds.,Accepted values range between C(150) and C(65535); 0 is used for infinite.,The APIC defaults to C(630) when unset during creation.
        attribute :bounce_age
        validates :bounce_age, type: Integer

        # @return [:coop, :flood, nil] Determines if the bounce entries are installed by RARP Flood or COOP Protocol.,The APIC defaults to C(coop) when unset during creation.
        attribute :bounce_trigger
        validates :bounce_trigger, expression_inclusion: {:in=>[:coop, :flood], :message=>"%{value} needs to be :coop, :flood"}, allow_nil: true

        # @return [Integer, nil] Hold interval in seconds.,Accepted values range between C(5) and C(65535).,The APIC defaults to C(300) when unset during creation.
        attribute :hold_interval
        validates :hold_interval, type: Integer

        # @return [Integer, nil] Local end point aging interval in seconds.,Accepted values range between C(120) and C(65535); 0 is used for infinite.,The APIC defaults to C(900) when unset during creation.
        attribute :local_ep_interval
        validates :local_ep_interval, type: Integer

        # @return [Integer, nil] Remote end point aging interval in seconds.,Accepted values range between C(120) and C(65535); 0 is used for infinite.,The APIC defaults to C(300) when unset during creation.
        attribute :remote_ep_interval
        validates :remote_ep_interval, type: Integer

        # @return [Integer, nil] Move frequency per second.,Accepted values range between C(0) and C(65535); 0 is used for none.,The APIC defaults to C(256) when unset during creation.
        attribute :move_frequency
        validates :move_frequency, type: Integer

        # @return [String, nil] Description for the End point rentention policy.
        attribute :description
        validates :description, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
