# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete, or manage aggregates on ONTAP.
      class Na_ontap_aggregate < Base
        # @return [:present, :absent, nil] Whether the specified aggregate should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:online, :offline, nil] Whether the specified aggregate should be enabled or disabled. Creates aggregate if doesnt exist.
        attribute :service_state
        validates :service_state, expression_inclusion: {:in=>[:online, :offline], :message=>"%{value} needs to be :online, :offline"}, allow_nil: true

        # @return [String] The name of the aggregate to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Name of the aggregate to be renamed.
        attribute :from_name

        # @return [Object, nil] Node(s) for the aggregate to be created on.  If no node specified, mgmt lif home will be used.,If multiple nodes specified an aggr stripe will be made.
        attribute :nodes

        # @return [:ATA, :BSAS, :FCAL, :FSAS, :LUN, :MSATA, :SAS, :SSD, :VMDISK, nil] Type of disk to use to build aggregate
        attribute :disk_type
        validates :disk_type, expression_inclusion: {:in=>[:ATA, :BSAS, :FCAL, :FSAS, :LUN, :MSATA, :SAS, :SSD, :VMDISK], :message=>"%{value} needs to be :ATA, :BSAS, :FCAL, :FSAS, :LUN, :MSATA, :SAS, :SSD, :VMDISK"}, allow_nil: true

        # @return [Integer, nil] Number of disks to place into the aggregate, including parity disks.,The disks in this newly-created aggregate come from the spare disk pool.,The smallest disks in this pool join the aggregate first, unless the C(disk-size) argument is provided.,Either C(disk-count) or C(disks) must be supplied. Range [0..2^31-1].,Required when C(state=present).
        attribute :disk_count
        validates :disk_count, type: Integer

        # @return [Object, nil] Disk size to use in 4K block size.  Disks within 10% of specified size will be used.
        attribute :disk_size

        # @return [Object, nil] Sets the maximum number of drives per raid group.
        attribute :raid_size

        # @return [Object, nil] Specifies the type of RAID groups to use in the new aggregate.,The default value is raid4 on most platforms.
        attribute :raid_type

        # @return [Symbol, nil] If set to "TRUE", this option specifies that all of the volumes hosted by the given aggregate are to be unmounted,before the offline operation is executed.,By default, the system will reject any attempt to offline an aggregate that hosts one or more online volumes.
        attribute :unmount_volumes
        validates :unmount_volumes, type: Symbol
      end
    end
  end
end
