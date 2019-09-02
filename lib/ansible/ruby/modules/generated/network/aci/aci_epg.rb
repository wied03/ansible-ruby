# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage End Point Groups (EPG) on Cisco ACI fabrics.
      class Aci_epg < Base
        # @return [String, nil] Name of an existing tenant.
        attribute :tenant
        validates :tenant, type: String

        # @return [String] Name of an existing application network profile, that will contain the EPGs.
        attribute :ap
        validates :ap, presence: true, type: String

        # @return [String] Name of the end point group.
        attribute :epg
        validates :epg, presence: true, type: String

        # @return [String] Name of the bridge domain being associated with the EPG.
        attribute :bd
        validates :bd, presence: true, type: String

        # @return [:level1, :level2, :level3, :unspecified, nil] The QoS class.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :priority
        validates :priority, expression_inclusion: {:in=>[:level1, :level2, :level3, :unspecified], :message=>"%{value} needs to be :level1, :level2, :level3, :unspecified"}, allow_nil: true

        # @return [:enforced, :unenforced, nil] The Intra EPG Isolation.,The APIC defaults to C(unenforced) when unset during creation.
        attribute :intra_epg_isolation
        validates :intra_epg_isolation, expression_inclusion: {:in=>[:enforced, :unenforced], :message=>"%{value} needs to be :enforced, :unenforced"}, allow_nil: true

        # @return [String, nil] Description for the EPG.
        attribute :description
        validates :description, type: String

        # @return [:none, :"proxy-arp", nil] The forwarding control used by the EPG.,The APIC defaults to C(none) when unset during creation.
        attribute :fwd_control
        validates :fwd_control, expression_inclusion: {:in=>[:none, :"proxy-arp"], :message=>"%{value} needs to be :none, :\"proxy-arp\""}, allow_nil: true

        # @return [Symbol, nil] Whether ot not the EPG is part of the Preferred Group and can communicate without contracts.,This is very convenient for migration scenarios, or when ACI is used for network automation but not for policy.,The APIC defaults to C(no) when unset during creation.
        attribute :preferred_group
        validates :preferred_group, type: Symbol

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
