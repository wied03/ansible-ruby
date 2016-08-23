# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Lvg < Base
        # @return [String] The name of the volume group.
        attribute :vg
        validates :vg, presence: true, type: String

        # @return [Array<String>, nil] List of comma-separated devices to use as physical devices in this volume group. Required when creating or resizing volume group.,The module will take care of running pvcreate if needed.
        attribute :pvs, flat_array: true
        validates :pvs, type: TypeGeneric.new(String)

        # @return [Integer, nil] The size of the physical extent in megabytes. Must be a power of 2.
        attribute :pesize
        validates :pesize, type: Integer

        # @return [Object, nil] Additional options to pass to C(vgcreate) when creating the volume group.
        attribute :vg_options

        # @return [:present, :absent, nil] Control if the volume group exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] If yes, allows to remove volume group with logical volumes.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
