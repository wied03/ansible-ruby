# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, manage and delete Windows shortcuts
      class Win_shortcut < Base
        # @return [String, nil] Executable or URL the shortcut points to.
        attribute :src
        validates :src, type: String

        # @return [String, nil] Description for the shortcut.,This is usually shown when hoovering the icon.
        attribute :description
        validates :description, type: String

        # @return [String] Destination file for the shortcuting file.,File name should have a C(.lnk) or C(.url) extension.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String, nil] Additional arguments for the executable defined in C(src).
        attribute :args
        validates :args, type: String

        # @return [String, nil] Working directory for executable defined in C(src).
        attribute :directory
        validates :directory, type: String

        # @return [Array<String>, String, nil] Icon used for the shortcut,File name should have a C(.ico) extension.,The file name is followed by a comma and the number in the library file (.dll) or use 0 for an image file.
        attribute :icon
        validates :icon, type: TypeGeneric.new(String)

        # @return [Object, nil] Key combination for the shortcut.
        attribute :hotkey

        # @return [:default, :maximized, :minimized, nil] Influences how the application is displayed when it is launched.
        attribute :windowstyle
        validates :windowstyle, inclusion: {:in=>[:default, :maximized, :minimized], :message=>"%{value} needs to be :default, :maximized, :minimized"}, allow_nil: true

        # @return [:present, :absent, nil] When C(present), creates or updates the shortcut.  When C(absent), removes the shortcut if it exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
