# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Contract resources on Cisco ACI fabrics.
      class Aci_contract < Base
        # @return [String] The name of the contract.
        attribute :contract
        validates :contract, presence: true, type: String

        # @return [String, nil] Description for the contract.
        attribute :description
        validates :description, type: String

        # @return [String] The name of the tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String

        # @return [:"application-profile", :context, :global, :tenant, nil] The scope of a service contract.,The APIC defaults to C(context) when unset during creation.
        attribute :scope
        validates :scope, inclusion: {:in=>[:"application-profile", :context, :global, :tenant], :message=>"%{value} needs to be :\"application-profile\", :context, :global, :tenant"}, allow_nil: true

        # @return [:level1, :level2, :level3, :unspecified, nil] The desired QoS class to be used.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :priority
        validates :priority, inclusion: {:in=>[:level1, :level2, :level3, :unspecified], :message=>"%{value} needs to be :level1, :level2, :level3, :unspecified"}, allow_nil: true

        # @return [:AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified, nil] The target Differentiated Service (DSCP) value.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :dscp
        validates :dscp, inclusion: {:in=>[:AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified], :message=>"%{value} needs to be :AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified"}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
