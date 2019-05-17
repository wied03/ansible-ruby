# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage (add, remove, change) individual settings in an INI-style file without having to manage the file as a whole with, say, M(template) or M(assemble). Adds missing sections if they don't exist.
      # Before version 2.0, comments are discarded when the source file is read, and therefore will not show up in the destination file.
      # Since version 2.3, this module adds missing ending newlines to files to keep in line with the POSIX standard, even when no other modifications need to be applied.
      class Ini_file < Base
        # @return [String] Path to the INI-style file; this file is created if required.,Before 2.3 this option was only usable as I(dest).
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] Section name in INI file. This is added if C(state=present) automatically when a single value is being set.,If left empty or set to `null`, the I(option) will be placed before the first I(section). Using `null` is also required if the config format does not support sections.
        attribute :section
        validates :section, presence: true, type: String

        # @return [String, nil] If set (required for changing a I(value)), this is the name of the option.,May be omitted if adding/removing a whole I(section).
        attribute :option
        validates :option, type: String

        # @return [String, nil] The string value to be associated with an I(option). May be omitted when removing an I(option).
        attribute :value
        validates :value, type: String

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] All arguments accepted by the M(file) module also work here
        attribute :others

        # @return [:absent, :present, nil] If set to C(absent) the option or section will be removed if present instead of created.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Do not insert spaces before and after '=' symbol
        attribute :no_extra_spaces
        validates :no_extra_spaces, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to 'no', the module will fail if the file does not already exist. By default it will create the file if it is missing.
        attribute :create
        validates :create, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Symbol, nil] allow option without value and without '=' symbol
        attribute :allow_no_value
        validates :allow_no_value, type: Symbol
      end
    end
  end
end
