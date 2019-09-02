# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, removes or resizes AIX logical volumes. Inspired by lvol module.
      class Aix_lvol < Base
        # @return [String] The volume group this logical volume is part of.
        attribute :vg
        validates :vg, presence: true, type: String

        # @return [String] The name of the logical volume.
        attribute :lv
        validates :lv, presence: true, type: String

        # @return [String, nil] The type of the logical volume.
        attribute :lv_type
        validates :lv_type, type: String

        # @return [String, nil] The size of the logical volume with one of the [MGT] units.
        attribute :size
        validates :size, type: String

        # @return [String, nil] The number of copies of the logical volume. Maximum copies are 3.
        attribute :copies
        validates :copies, type: String

        # @return [:maximum, :minimum, nil] Sets the interphysical volume allocation policy. C(maximum) allocates logical partitions across the maximum number of physical volumes. C(minimum) allocates logical partitions across the minimum number of physical volumes.
        attribute :policy
        validates :policy, expression_inclusion: {:in=>[:maximum, :minimum], :message=>"%{value} needs to be :maximum, :minimum"}, allow_nil: true

        # @return [:absent, :present, nil] Control if the logical volume exists. If C(present) and the volume does not already exist then the C(size) option is required.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Free-form options to be passed to the mklv command.
        attribute :opts
        validates :opts, type: String

        # @return [Array<String>, String, nil] Comma separated list of physical volumes e.g. C(hdisk1,hdisk2).
        attribute :pvs
        validates :pvs, type: TypeGeneric.new(String)
      end
    end
  end
end
