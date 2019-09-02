# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind EPGs to Contracts on Cisco ACI fabrics.
      class Aci_epg_to_contract < Base
        # @return [String, nil] Name of an existing application network profile, that will contain the EPGs.
        attribute :ap
        validates :ap, type: String

        # @return [String, nil] The name of the contract.
        attribute :contract
        validates :contract, type: String

        # @return [:consumer, :provider] Determines if the EPG should Provide or Consume the Contract.
        attribute :contract_type
        validates :contract_type, presence: true, expression_inclusion: {:in=>[:consumer, :provider], :message=>"%{value} needs to be :consumer, :provider"}

        # @return [String, nil] The name of the end point group.
        attribute :epg
        validates :epg, type: String

        # @return [:level1, :level2, :level3, :unspecified, nil] QoS class.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :priority
        validates :priority, expression_inclusion: {:in=>[:level1, :level2, :level3, :unspecified], :message=>"%{value} needs to be :level1, :level2, :level3, :unspecified"}, allow_nil: true

        # @return [:all, :at_least_one, :at_most_one, :none, nil] The matching algorithm for Provided Contracts.,The APIC defaults to C(at_least_one) when unset during creation.
        attribute :provider_match
        validates :provider_match, expression_inclusion: {:in=>[:all, :at_least_one, :at_most_one, :none], :message=>"%{value} needs to be :all, :at_least_one, :at_most_one, :none"}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [String, nil] Name of an existing tenant.
        attribute :tenant
        validates :tenant, type: String
      end
    end
  end
end
