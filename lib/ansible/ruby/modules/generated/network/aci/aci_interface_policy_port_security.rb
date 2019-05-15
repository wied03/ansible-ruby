# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage port security on Cisco ACI fabrics.
      class Aci_interface_policy_port_security < Base
        # @return [String] The name of the port security.
        attribute :port_security
        validates :port_security, presence: true, type: String

        # @return [String, nil] The description for the contract.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Maximum number of end points.,Accepted values range between C(0) and C(12000).,The APIC defaults to C(0) when unset during creation.
        attribute :max_end_points
        validates :max_end_points, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
