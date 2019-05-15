# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage contexts or VRFs on Cisco ACI fabrics.
      # Each context is a private network associated to a tenant, i.e. VRF.
      class Aci_vrf < Base
        # @return [String, nil] The name of the Tenant the VRF should belong to.
        attribute :tenant
        validates :tenant, type: String

        # @return [String, nil] The name of the VRF.
        attribute :vrf
        validates :vrf, type: String

        # @return [:egress, :ingress, nil] Determines if the policy should be enforced by the fabric on ingress or egress.
        attribute :policy_control_direction
        validates :policy_control_direction, inclusion: {:in=>[:egress, :ingress], :message=>"%{value} needs to be :egress, :ingress"}, allow_nil: true

        # @return [:enforced, :unenforced, nil] Determines if the fabric should enforce contract policies to allow routing and packet forwarding.
        attribute :policy_control_preference
        validates :policy_control_preference, inclusion: {:in=>[:enforced, :unenforced], :message=>"%{value} needs to be :enforced, :unenforced"}, allow_nil: true

        # @return [Object, nil] The description for the VRF.
        attribute :description

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
