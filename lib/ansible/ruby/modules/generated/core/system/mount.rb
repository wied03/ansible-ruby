# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Mount < Base
        # @return [String] path to the mount point, eg: C(/mnt/files)
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] device to be mounted on I(name).
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] file-system type
        attribute :fstype
        validates :fstype, presence: true, type: String

        # @return [String] mount options (see fstab(5))
        attribute :opts
        validates :opts, type: String

        # @return [Fixnum] dump (see fstab(5)), Note that if nulled, C(state=present) will cease to work and duplicate entries will be made with subsequent runs.
        attribute :dump
        validates :dump, type: Fixnum

        # @return [Fixnum] passno (see fstab(5)), Note that if nulled, C(state=present) will cease to work and duplicate entries will be made with subsequent runs.
        attribute :passno
        validates :passno, type: Fixnum

        # @return [:present, :absent, :mounted, :unmounted] If C(mounted) or C(unmounted), the device will be actively mounted or unmounted as needed and appropriately configured in I(fstab).,C(absent) and C(present) only deal with I(fstab) but will not affect current mounting.,If specifying C(mounted) and the mount point is not present, the mount point will be created. Similarly.,Specifying C(absent) will remove the mount point directory.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :mounted, :unmounted], :message=>"%{value} needs to be :present, :absent, :mounted, :unmounted"}

        # @return [String] file to use instead of C(/etc/fstab). You shouldn't use that option unless you really know what you are doing. This might be useful if you need to configure mountpoints in a chroot environment.
        attribute :fstab
        validates :fstab, type: String
      end
    end
  end
end
