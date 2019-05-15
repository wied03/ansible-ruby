# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind Contract Subjects to Filters on Cisco ACI fabrics.
      class Aci_contract_subject_to_filter < Base
        # @return [String, nil] The name of the contract.
        attribute :contract
        validates :contract, type: String

        # @return [String, nil] The name of the Filter to bind to the Subject.
        attribute :filter
        validates :filter, type: String

        # @return [:log, :none, nil] Determines if the binding should be set to log.,The APIC defaults to C(none) when unset during creation.
        attribute :log
        validates :log, inclusion: {:in=>[:log, :none], :message=>"%{value} needs to be :log, :none"}, allow_nil: true

        # @return [String, nil] The name of the Contract Subject.
        attribute :subject
        validates :subject, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [String] The name of the tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String
      end
    end
  end
end
