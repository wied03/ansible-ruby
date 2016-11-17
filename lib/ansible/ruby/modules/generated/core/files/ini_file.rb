# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage (add, remove, change) individual settings in an INI-style file without having to manage the file as a whole with, say, M(template) or M(assemble). Adds missing sections if they don't exist.
      # Before version 2.0, comments are discarded when the source file is read, and therefore will not show up in the destination file.
      class Ini_file < Base
        # @return [String] Path to the INI-style file; this file is created if required
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] Section name in INI file. This is added if C(state=present) automatically when a single value is being set.
        attribute :section
        validates :section, presence: true, type: String

        # @return [String, nil] if set (required for changing a I(value)), this is the name of the option.,May be omitted if adding/removing a whole I(section).
        attribute :option
        validates :option, type: String

        # @return [String, nil] the string value to be associated with an I(option). May be omitted when removing an I(option).
        attribute :value
        validates :value, type: String

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] all arguments accepted by the M(file) module also work here
        attribute :others

        # @return [:present, :absent, nil] If set to C(absent) the option or section will be removed if present instead of created.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] do not insert spaces before and after '=' symbol
        attribute :no_extra_spaces
        validates :no_extra_spaces, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] If specified, the file will be created if it does not already exist. By default it will fail if the file is missing.
        attribute :create
        validates :create, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
