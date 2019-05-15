# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage taboo contracts on Cisco ACI fabrics.
      class Aci_taboo_contract < Base
        # @return [String] The name of the Taboo Contract.
        attribute :taboo_contract
        validates :taboo_contract, presence: true, type: String

        # @return [Object, nil] The description for the Taboo Contract.
        attribute :description

        # @return [String] The name of the tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String

        # @return [:"application-profile", :context, :global, :tenant, nil] The scope of a service contract.,The APIC defaults to C(context) when unset during creation.
        attribute :scope
        validates :scope, inclusion: {:in=>[:"application-profile", :context, :global, :tenant], :message=>"%{value} needs to be :\"application-profile\", :context, :global, :tenant"}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
