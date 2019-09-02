# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy or modify volumes on NetApp ONTAP.
      class Na_ontap_volume < Base
        # @return [:present, :absent, nil] Whether the specified volume should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the volume to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [Object, nil] Name of the existing volume to be renamed to name.
        attribute :from_name

        # @return [Symbol, nil] Set True if the volume is an Infinite Volume. Deleting an infinite volume is asynchronous.
        attribute :is_infinite
        validates :is_infinite, type: Symbol

        # @return [Boolean, nil] Whether the specified volume is online, or not.
        attribute :is_online
        validates :is_online, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The name of the aggregate the flexvol should exist on.,Required when C(state=present).
        attribute :aggregate_name
        validates :aggregate_name, type: String

        # @return [Integer, nil] The size of the volume in (size_unit). Required when C(state=present).
        attribute :size
        validates :size, type: Integer

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret the size parameter.
        attribute :size_unit
        validates :size_unit, expression_inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [Object, nil] The volume type, either read-write (RW) or data-protection (DP).
        attribute :type

        # @return [Object, nil] Name of the export policy.
        attribute :policy

        # @return [String, nil] Junction path of the volume.
        attribute :junction_path
        validates :junction_path, type: String

        # @return [:none, :volume, nil] Space guarantee style for the volume.
        attribute :space_guarantee
        validates :space_guarantee, expression_inclusion: {:in=>[:none, :volume], :message=>"%{value} needs to be :none, :volume"}, allow_nil: true

        # @return [Object, nil] Amount of space reserved for snapshot copies of the volume.
        attribute :percent_snapshot_space

        # @return [:mixed, :ntfs, :unified, :unix, nil] The security style associated with this volume.
        attribute :volume_security_style
        validates :volume_security_style, expression_inclusion: {:in=>[:mixed, :ntfs, :unified, :unix], :message=>"%{value} needs to be :mixed, :ntfs, :unified, :unix"}, allow_nil: true

        # @return [Symbol, nil] Whether or not to enable Volume Encryption.
        attribute :encrypt
        validates :encrypt, type: Symbol

        # @return [Object, nil] Allows a storage efficiency policy to be set on volume creation.
        attribute :efficiency_policy
      end
    end
  end
end
