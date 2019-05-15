# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage data centers in oVirt/RHV
      class Ovirt_datacenter < Base
        # @return [String] Name of the data center to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the data center be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Description of the data center.
        attribute :description

        # @return [Object, nil] Comment of the data center.
        attribute :comment

        # @return [Boolean, nil] I(True) if the data center should be local, I(False) if should be shared.,Default value is set by engine.
        attribute :local
        validates :local, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Float, nil] Compatibility version of the data center.
        attribute :compatibility_version
        validates :compatibility_version, type: Float

        # @return [:disabled, :audit, :enabled, nil] Quota mode of the data center. One of I(disabled), I(audit) or I(enabled)
        attribute :quota_mode
        validates :quota_mode, inclusion: {:in=>[:disabled, :audit, :enabled], :message=>"%{value} needs to be :disabled, :audit, :enabled"}, allow_nil: true

        # @return [Object, nil] MAC pool to be used by this datacenter.,IMPORTANT: This option is deprecated in oVirt/RHV 4.1. You should use C(mac_pool) in C(ovirt_clusters) module, as MAC pools are set per cluster since 4.1.
        attribute :mac_pool

        # @return [Boolean, nil] This parameter can be used only when removing a data center. If I(True) data center will be forcibly removed, even though it contains some clusters. Default value is I(False), which means that only empty data center can be removed.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
