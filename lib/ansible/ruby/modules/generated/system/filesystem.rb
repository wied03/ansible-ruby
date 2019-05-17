# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates a filesystem.
      class Filesystem < Base
        # @return [:btrfs, :ext2, :ext3, :ext4, :ext4dev, :f2fs, :lvm, :ocfs2, :reiserfs, :xfs, :vfat] Filesystem type to be created.,reiserfs support was added in 2.2.,lvm support was added in 2.5.,since 2.5, I(dev) can be an image file.,vfat support was added in 2.5,ocfs2 support was added in 2.6,f2fs support was added in 2.7
        attribute :fstype
        validates :fstype, presence: true, inclusion: {:in=>[:btrfs, :ext2, :ext3, :ext4, :ext4dev, :f2fs, :lvm, :ocfs2, :reiserfs, :xfs, :vfat], :message=>"%{value} needs to be :btrfs, :ext2, :ext3, :ext4, :ext4dev, :f2fs, :lvm, :ocfs2, :reiserfs, :xfs, :vfat"}

        # @return [String] Target path to device or image file.
        attribute :dev
        validates :dev, presence: true, type: String

        # @return [:yes, :no, nil] If C(yes), allows to create new filesystem on devices that already has filesystem.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(yes), if the block device and filesytem size differ, grow the filesystem into the space.,Supported for C(ext2), C(ext3), C(ext4), C(ext4dev), C(f2fs), C(lvm), C(xfs) and C(vfat) filesystems.,XFS Will only grow if mounted.,vFAT will likely fail if fatresize < 1.04.
        attribute :resizefs
        validates :resizefs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] List of options to be passed to mkfs command.
        attribute :opts
        validates :opts, type: String
      end
    end
  end
end
