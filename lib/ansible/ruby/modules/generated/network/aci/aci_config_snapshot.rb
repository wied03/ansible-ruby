# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Config Snapshots on Cisco ACI fabrics.
      # Creating new Snapshots is done using the configExportP class.
      # Removing Snapshots is done using the configSnapshot class.
      class Aci_config_snapshot < Base
        # @return [String, nil] The description for the Config Export Policy.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The name of the Export Policy to use for Config Snapshots.
        attribute :export_policy
        validates :export_policy, type: String

        # @return [:json, :xml, nil] Sets the config backup to be formatted in JSON or XML.,The APIC defaults to C(json) when unset.
        attribute :format
        validates :format, expression_inclusion: {:in=>[:json, :xml], :message=>"%{value} needs to be :json, :xml"}, allow_nil: true

        # @return [Symbol, nil] Determines if secure information should be included in the backup.,The APIC defaults to C(yes) when unset.
        attribute :include_secure
        validates :include_secure, type: Symbol

        # @return [Integer, nil] Determines how many snapshots can exist for the Export Policy before the APIC starts to rollover.,Accepted values range between C(1) and C(10).,The APIC defaults to C(3) when unset.
        attribute :max_count
        validates :max_count, type: Integer

        # @return [String, nil] The name of the snapshot to delete.
        attribute :snapshot
        validates :snapshot, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
