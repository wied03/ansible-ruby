# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, resize LUNs on NetApp ONTAP.
      class Na_ontap_lun < Base
        # @return [:present, :absent, nil] Whether the specified LUN should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the LUN to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The name of the FlexVol the LUN should exist on.
        attribute :flexvol_name
        validates :flexvol_name, presence: true, type: String

        # @return [Integer, nil] The size of the LUN in C(size_unit).,Required when C(state=present).
        attribute :size
        validates :size, type: Integer

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret the size parameter.
        attribute :size_unit
        validates :size_unit, expression_inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [Symbol, nil] Forcibly reduce the size. This is required for reducing the size of the LUN to avoid accidentally reducing the LUN size.
        attribute :force_resize
        validates :force_resize, type: Symbol

        # @return [Symbol, nil] If "true", override checks that prevent a LUN from being destroyed if it is online and mapped.,If "false", destroying an online and mapped LUN will fail.
        attribute :force_remove
        validates :force_remove, type: Symbol

        # @return [Symbol, nil] If "true", override checks that prevent a LUN from being destroyed while it is fenced.,If "false", attempting to destroy a fenced LUN will fail.,The default if not specified is "false". This field is available in Data ONTAP 8.2 and later.
        attribute :force_remove_fenced
        validates :force_remove_fenced, type: Symbol

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [String, nil] The os type for the LUN.
        attribute :ostype
        validates :ostype, type: String

        # @return [Boolean, nil] This can be set to "false" which will create a LUN without any space being reserved.
        attribute :space_reserve
        validates :space_reserve, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] This enables support for the SCSI Thin Provisioning features.  If the Host and file system do not support this do not enable it.
        attribute :space_allocation
        validates :space_allocation, type: Symbol
      end
    end
  end
end
