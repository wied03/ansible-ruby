# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides rollback and rollback preview functionality for Cisco ACI fabrics.
      # Config Rollbacks are done using snapshots C(aci_snapshot) with the configImportP class.
      class Aci_config_rollback < Base
        # @return [String, nil] The export policy that the C(compare_snapshot) is associated to.
        attribute :compare_export_policy
        validates :compare_export_policy, type: String

        # @return [String, nil] The name of the snapshot to compare with C(snapshot).
        attribute :compare_snapshot
        validates :compare_snapshot, type: String

        # @return [String, nil] The description for the Import Policy.
        attribute :description
        validates :description, type: String

        # @return [String] The export policy that the C(snapshot) is associated to.
        attribute :export_policy
        validates :export_policy, presence: true, type: String

        # @return [Boolean, nil] Determines if the APIC should fail the rollback if unable to decrypt secured data.,The APIC defaults to C(yes) when unset.
        attribute :fail_on_decrypt
        validates :fail_on_decrypt, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:atomic, :"best-effort", nil] Determines how the import should be handled by the APIC.,The APIC defaults to C(atomic) when unset.
        attribute :import_mode
        validates :import_mode, inclusion: {:in=>[:atomic, :"best-effort"], :message=>"%{value} needs to be :atomic, :\"best-effort\""}, allow_nil: true

        # @return [String, nil] The name of the Import Policy to use for config rollback.
        attribute :import_policy
        validates :import_policy, type: String

        # @return [:merge, :replace, nil] Determines how the current and snapshot configuration should be compared for replacement.,The APIC defaults to C(replace) when unset.
        attribute :import_type
        validates :import_type, inclusion: {:in=>[:merge, :replace], :message=>"%{value} needs to be :merge, :replace"}, allow_nil: true

        # @return [String] The name of the snapshot to rollback to, or the base snapshot to use for comparison.,The C(aci_snapshot) module can be used to query the list of available snapshots.
        attribute :snapshot
        validates :snapshot, presence: true, type: String

        # @return [:preview, :rollback, nil] Use C(preview) for previewing the diff between two snapshots.,Use C(rollback) for reverting the configuration to a previous snapshot.
        attribute :state
        validates :state, inclusion: {:in=>[:preview, :rollback], :message=>"%{value} needs to be :preview, :rollback"}, allow_nil: true
      end
    end
  end
end
