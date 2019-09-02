# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, removes or resizes volume groups.
      class Lvg < Base
        # @return [String] The name of the volume group.
        attribute :vg
        validates :vg, presence: true, type: String

        # @return [Array<String>, String, nil] List of comma-separated devices to use as physical devices in this volume group. Required when creating or resizing volume group.,The module will take care of running pvcreate if needed.
        attribute :pvs
        validates :pvs, type: TypeGeneric.new(String)

        # @return [Integer, nil] The size of the physical extent. pesize must be a power of 2, or multiple of 128KiB. Since version 2.6, pesize can be optionally suffixed by a UNIT (k/K/m/M/g/G), default unit is megabyte.
        attribute :pesize
        validates :pesize, type: Integer

        # @return [Object, nil] Additional options to pass to C(pvcreate) when creating the volume group.
        attribute :pv_options

        # @return [Object, nil] Additional options to pass to C(vgcreate) when creating the volume group.
        attribute :vg_options

        # @return [:absent, :present, nil] Control if the volume group exists.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] If C(yes), allows to remove volume group with logical volumes.
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
