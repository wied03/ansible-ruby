# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Connect to external virtual and physical domains by using attachable Access Entity Profiles (AEP) on Cisco ACI fabrics.
      class Aci_aep < Base
        # @return [String] The name of the Attachable Access Entity Profile.
        attribute :aep
        validates :aep, presence: true, type: String

        # @return [String, nil] Description for the AEP.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Enable infrastructure VLAN.,The hypervisor functions of the AEP.,C(no) will disable the infrastructure vlan if it is enabled.
        attribute :infra_vlan
        validates :infra_vlan, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
