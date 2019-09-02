# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, resize luns on NetApp cDOT.
      class Na_cdot_lun < Base
        # @return [:present, :absent] Whether the specified lun should exist or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the lun to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The name of the FlexVol the lun should exist on.,Required when C(state=present).
        attribute :flexvol_name
        validates :flexvol_name, type: String

        # @return [Integer, nil] The size of the lun in C(size_unit).,Required when C(state=present).
        attribute :size
        validates :size, type: Integer

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret the size parameter.
        attribute :size_unit
        validates :size_unit, expression_inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [Boolean, nil] Forcibly reduce the size. This is required for reducing the size of the LUN to avoid accidentally reducing the LUN size.
        attribute :force_resize
        validates :force_resize, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If "true", override checks that prevent a LUN from being destroyed if it is online and mapped.,If "false", destroying an online and mapped LUN will fail.
        attribute :force_remove
        validates :force_remove, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If "true", override checks that prevent a LUN from being destroyed while it is fenced.,If "false", attempting to destroy a fenced LUN will fail.,The default if not specified is "false". This field is available in Data ONTAP 8.2 and later.
        attribute :force_remove_fenced
        validates :force_remove_fenced, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
