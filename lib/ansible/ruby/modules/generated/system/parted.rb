# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows configuring block device partition using the C(parted) command line tool. For a full description of the fields and the options check the GNU parted manual.
      class Parted < Base
        # @return [String] The block device (disk) where to operate.
        attribute :device
        validates :device, presence: true, type: String

        # @return [:none, :cylinder, :minimal, :optimal, nil] Set alignment for newly created partitions.
        attribute :align
        validates :align, inclusion: {:in=>[:none, :cylinder, :minimal, :optimal], :message=>"%{value} needs to be :none, :cylinder, :minimal, :optimal"}, allow_nil: true

        # @return [Integer, String, nil] The number of the partition to work with or the number of the partition that will be created. Required when performing any action on the disk, except fetching information.
        attribute :number
        validates :number, type: MultipleTypes.new(Integer, String)

        # @return [:s, :B, :KB, :KiB, :MB, :MiB, :GB, :GiB, :TB, :TiB, :%, :cyl, :chs, :compact, nil] Selects the current default unit that Parted will use to display locations and capacities on the disk and to interpret those given by the user if they are not suffixed by an unit. When fetching information about a disk, it is always recommended to specify a unit.
        attribute :unit
        validates :unit, inclusion: {:in=>[:s, :B, :KB, :KiB, :MB, :MiB, :GB, :GiB, :TB, :TiB, :%, :cyl, :chs, :compact], :message=>"%{value} needs to be :s, :B, :KB, :KiB, :MB, :MiB, :GB, :GiB, :TB, :TiB, :%, :cyl, :chs, :compact"}, allow_nil: true

        # @return [:aix, :amiga, :bsd, :dvh, :gpt, :loop, :mac, :msdos, :pc98, :sun, :"", nil] Creates a new disk label.
        attribute :label
        validates :label, inclusion: {:in=>[:aix, :amiga, :bsd, :dvh, :gpt, :loop, :mac, :msdos, :pc98, :sun, :""], :message=>"%{value} needs to be :aix, :amiga, :bsd, :dvh, :gpt, :loop, :mac, :msdos, :pc98, :sun, :\"\""}, allow_nil: true

        # @return [:primary, :extended, :logical, nil] Is one of 'primary', 'extended' or 'logical' and may be specified only with 'msdos' or 'dvh' partition tables. A name must be specified for a 'gpt' partition table. Neither part-type nor name may be used with a 'sun' partition table.
        attribute :part_type
        validates :part_type, inclusion: {:in=>[:primary, :extended, :logical], :message=>"%{value} needs to be :primary, :extended, :logical"}, allow_nil: true

        # @return [String, nil] Where the partition will start as offset from the beginning of the disk, that is, the "distance" from the start of the disk. The distance can be specified with all the units supported by parted (except compat) and it is case sensitive. E.g. C(10GiB), C(15%).
        attribute :part_start
        validates :part_start, type: String

        # @return [String, nil] Where the partition will end as offset from the beginning of the disk, that is, the "distance" from the start of the disk. The distance can be specified with all the units supported by parted (except compat) and it is case sensitive. E.g. C(10GiB), C(15%).
        attribute :part_end
        validates :part_end, type: String

        # @return [Object, nil] Sets the name for the partition number (GPT, Mac, MIPS and PC98 only).
        attribute :name

        # @return [Array<String>, String, nil] A list of the flags that has to be set on the partition.
        attribute :flags
        validates :flags, type: TypeGeneric.new(String)

        # @return [:present, :absent, :info, nil] If to create or delete a partition. If set to C(info) the module will only return the device information.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :info], :message=>"%{value} needs to be :present, :absent, :info"}, allow_nil: true
      end
    end
  end
end
