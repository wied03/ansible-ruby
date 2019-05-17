# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, removes or resizes logical volumes.
      class Lvol < Base
        # @return [String, nil] The volume group this logical volume is part of.
        attribute :vg
        validates :vg, type: String

        # @return [String, nil] The name of the logical volume.
        attribute :lv
        validates :lv, type: String

        # @return [Integer, String, nil] The size of the logical volume, according to lvcreate(8) --size, by default in megabytes or optionally with one of [bBsSkKmMgGtTpPeE] units; or according to lvcreate(8) --extents as a percentage of [VG|PVS|FREE]; Float values must begin with a digit. Resizing using percentage values was not supported prior to 2.1.
        attribute :size
        validates :size, type: MultipleTypes.new(Integer, String)

        # @return [:absent, :present, nil] Control if the logical volume exists. If C(present) and the volume does not already exist then the C(size) option is required.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Whether the volume is activate and visible to the host.
        attribute :active
        validates :active, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Shrink or remove operations of volumes requires this switch. Ensures that that filesystems get never corrupted/destroyed by mistake.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Free-form options to be passed to the lvcreate command.
        attribute :opts
        validates :opts, type: String

        # @return [String, nil] The name of the snapshot volume
        attribute :snapshot
        validates :snapshot, type: String

        # @return [Array<String>, String, nil] Comma separated list of physical volumes (e.g. /dev/sda,/dev/sdb).
        attribute :pvs
        validates :pvs, type: TypeGeneric.new(String)

        # @return [String, nil] The thin pool volume name. When you want to create a thin provisioned volume, specify a thin pool volume name.
        attribute :thinpool
        validates :thinpool, type: String

        # @return [:yes, :no, nil] Shrink if current size is higher than size requested.
        attribute :shrink
        validates :shrink, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Resize the underlying filesystem together with the logical volume.
        attribute :resizefs
        validates :resizefs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
