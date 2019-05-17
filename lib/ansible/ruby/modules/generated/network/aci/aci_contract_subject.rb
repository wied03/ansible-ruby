# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage initial Contract Subjects on Cisco ACI fabrics.
      class Aci_contract_subject < Base
        # @return [String, nil] The name of the tenant.
        attribute :tenant
        validates :tenant, type: String

        # @return [String, nil] The contract subject name.
        attribute :subject
        validates :subject, type: String

        # @return [String, nil] The name of the Contract.
        attribute :contract
        validates :contract, type: String

        # @return [Symbol, nil] Determines if the APIC should reverse the src and dst ports to allow the return traffic back, since ACI is stateless filter.,The APIC defaults to C(yes) when unset during creation.
        attribute :reverse_filter
        validates :reverse_filter, type: Symbol

        # @return [:level1, :level2, :level3, :unspecified, nil] The QoS class.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :priority
        validates :priority, inclusion: {:in=>[:level1, :level2, :level3, :unspecified], :message=>"%{value} needs to be :level1, :level2, :level3, :unspecified"}, allow_nil: true

        # @return [:AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified, nil] The target DSCP.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :dscp
        validates :dscp, inclusion: {:in=>[:AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified], :message=>"%{value} needs to be :AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified"}, allow_nil: true

        # @return [String, nil] Description for the contract subject.
        attribute :description
        validates :description, type: String

        # @return [:all, :at_least_one, :at_most_one, :none, nil] The match criteria across consumers.,The APIC defaults to C(at_least_one) when unset during creation.
        attribute :consumer_match
        validates :consumer_match, inclusion: {:in=>[:all, :at_least_one, :at_most_one, :none], :message=>"%{value} needs to be :all, :at_least_one, :at_most_one, :none"}, allow_nil: true

        # @return [:all, :at_least_one, :at_most_one, :none, nil] The match criteria across providers.,The APIC defaults to C(at_least_one) when unset during creation.
        attribute :provider_match
        validates :provider_match, inclusion: {:in=>[:all, :at_least_one, :at_most_one, :none], :message=>"%{value} needs to be :all, :at_least_one, :at_most_one, :none"}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
