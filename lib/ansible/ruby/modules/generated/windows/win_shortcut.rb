# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, manage and delete Windows shortcuts
      class Win_shortcut < Base
        # @return [String, nil] Executable or URL the shortcut points to.,The executable needs to be in your PATH, or has to be an absolute path to the executable.
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

        # @return [String, nil] Icon used for the shortcut.,File name should have a C(.ico) extension.,The file name is followed by a comma and the number in the library file (.dll) or use 0 for an image file.
        attribute :icon
        validates :icon, type: String

        # @return [String, nil] Key combination for the shortcut.,This is a combination of one or more modifiers and a key.,Possible modifiers are Alt, Ctrl, Shift, Ext.,Possible keys are [A-Z] and [0-9].
        attribute :hotkey
        validates :hotkey, type: String

        # @return [:maximized, :minimized, :normal, nil] Influences how the application is displayed when it is launched.
        attribute :windowstyle
        validates :windowstyle, inclusion: {:in=>[:maximized, :minimized, :normal], :message=>"%{value} needs to be :maximized, :minimized, :normal"}, allow_nil: true

        # @return [:absent, :present, nil] When C(absent), removes the shortcut if it exists.,When C(present), creates or updates the shortcut.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
