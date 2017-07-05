# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module controls active and configured mount points in C(/etc/fstab).
      class Mount < Base
        # @return [String] Path to the mount point (e.g. C(/mnt/files)).,Before 2.3 this option was only usable as I(dest), I(destfile) and I(name).
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] Device to be mounted on I(path). Required when I(state) set to C(present) or C(mounted).
        attribute :src
        validates :src, type: String

        # @return [String, nil] Filesystem type. Required when I(state) is C(present) or C(mounted).
        attribute :fstype
        validates :fstype, type: String

        # @return [String, nil] Mount options (see fstab(5), or vfstab(4) on Solaris).
        attribute :opts
        validates :opts, type: String

        # @return [Integer, nil] Dump (see fstab(5)). Note that if set to C(null) and I(state) set to C(present), it will cease to work and duplicate entries will be made with subsequent runs.,Has no effect on Solaris systems.
        attribute :dump
        validates :dump, type: Integer

        # @return [Integer, nil] Passno (see fstab(5)). Note that if set to C(null) and I(state) set to C(present), it will cease to work and duplicate entries will be made with subsequent runs.,Deprecated on Solaris systems.
        attribute :passno
        validates :passno, type: Integer

        # @return [:present, :absent, :mounted, :unmounted] If C(mounted) or C(unmounted), the device will be actively mounted or unmounted as needed and appropriately configured in I(fstab).,C(absent) and C(present) only deal with I(fstab) but will not affect current mounting.,If specifying C(mounted) and the mount point is not present, the mount point will be created.,Similarly, specifying C(absent) will remove the mount point directory.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :mounted, :unmounted], :message=>"%{value} needs to be :present, :absent, :mounted, :unmounted"}

        # @return [String, nil] File to use instead of C(/etc/fstab). You shouldn't use this option unless you really know what you are doing. This might be useful if you need to configure mountpoints in a chroot environment.  OpenBSD does not allow specifying alternate fstab files with mount so do not use this on OpenBSD with any state that operates on the live filesystem.
        attribute :fstab
        validates :fstab, type: String

        # @return [Boolean, nil] Determines if the filesystem should be mounted on boot.,Only applies to Solaris systems.
        attribute :boot
        validates :boot, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
