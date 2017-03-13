# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates file system.
      class Filesystem < Base
        # @return [String] File System type to be created.,reiserfs support was added in 2.2.
        attribute :fstype
        validates :fstype, presence: true, type: String

        # @return [String] Target block device.
        attribute :dev
        validates :dev, presence: true, type: String

        # @return [:yes, :no, nil] If yes, allows to create new filesystem on devices that already has filesystem.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If yes, if the block device and filessytem size differ, grow the filesystem into the space. Note, XFS Will only grow if mounted.
        attribute :resizefs
        validates :resizefs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] List of options to be passed to mkfs command.
        attribute :opts
        validates :opts, type: String
      end
    end
  end
end
