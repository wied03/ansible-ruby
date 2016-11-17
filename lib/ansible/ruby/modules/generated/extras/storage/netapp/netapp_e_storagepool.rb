# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or remove disk groups and disk pools for NetApp E-series storage arrays.
      class Netapp_e_storagepool < Base
        # @return [String] The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_username
        validates :api_username, presence: true, type: String

        # @return [String] The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_password
        validates :api_password, presence: true, type: String

        # @return [String] The url to the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_url
        validates :api_url, presence: true, type: String

        # @return [Boolean, nil] Should https certificates be validated?
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] The ID of the array to manage (as configured on the web services proxy).
        attribute :ssid
        validates :ssid, presence: true, type: String

        # @return [:present, :absent] Whether the specified storage pool should exist or not.,Note that removing a storage pool currently requires the removal of all defined volumes first.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the storage pool to manage
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The number of disks to use for building the storage pool. The pool will be expanded if this number exceeds the number of disks already in place
        attribute :criteria_drive_count

        # @return [:hdd, :ssd, nil] The type of disk (hdd or ssd) to use when searching for candidates to use.
        attribute :criteria_drive_type
        validates :criteria_drive_type, inclusion: {:in=>[:hdd, :ssd], :message=>"%{value} needs to be :hdd, :ssd"}, allow_nil: true

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit used to interpret size parameters
        attribute :criteria_size_unit
        validates :criteria_size_unit, inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [Object, nil] The minimum individual drive size (in size_unit) to consider when choosing drives for the storage pool.
        attribute :criteria_drive_min_size

        # @return [Object, nil] The minimum size of the storage pool (in size_unit). The pool will be expanded if this value exceeds itscurrent size.
        attribute :criteria_min_usable_capacity

        # @return [:sas, :sas4k, :fibre, :fibre520b, :scsi, :sata, :pata, nil] The interface type to use when selecting drives for the storage pool (no value means all interface types will be considered)
        attribute :criteria_drive_interface_type
        validates :criteria_drive_interface_type, inclusion: {:in=>[:sas, :sas4k, :fibre, :fibre520b, :scsi, :sata, :pata], :message=>"%{value} needs to be :sas, :sas4k, :fibre, :fibre520b, :scsi, :sata, :pata"}, allow_nil: true

        # @return [Object, nil] Whether full disk encryption ability is required for drives to be added to the storage pool
        attribute :criteria_drive_require_fde

        # @return [:raidAll, :raid0, :raid1, :raid3, :raid5, :raid6, :raidDiskPool] Only required when the requested state is 'present'.  The RAID level of the storage pool to be created.
        attribute :raid_level
        validates :raid_level, presence: true, inclusion: {:in=>[:raidAll, :raid0, :raid1, :raid3, :raid5, :raid6, :raidDiskPool], :message=>"%{value} needs to be :raidAll, :raid0, :raid1, :raid3, :raid5, :raid6, :raidDiskPool"}

        # @return [:true, :false, nil] Whether to erase secured disks before adding to storage pool
        attribute :erase_secured_drives
        validates :erase_secured_drives, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Whether to convert to a secure storage pool. Will only work if all drives in the pool are security capable.
        attribute :secure_pool
        validates :secure_pool, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object, nil] Set the number of drives reserved by the storage pool for reconstruction operations. Only valide on raid disk pools.
        attribute :reserve_drive_count

        # @return [Boolean, nil] Prior to removing a storage pool, delete all volumes in the pool.
        attribute :remove_volumes
        validates :remove_volumes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
