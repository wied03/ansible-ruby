# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Assemble < Base
        # @return [String] An already existing directory full of source files.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] A file to create using the concatenation of all of the source files.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] Create a backup file (if C(yes)), including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] A delimiter to separate the file contents.
        attribute :delimiter
        validates :delimiter, type: String

        # @return [String] If False, it will search for src at originating/master machine, if True it will go to the remote/target machine for the src. Default is True.
        attribute :remote_src
        validates :remote_src, inclusion: {:in=>[:True, :False], :message=>"%{value} needs to be :True, :False"}, allow_nil: true

        # @return [Object] Assemble files only if C(regex) matches the filename. If not set, all files are assembled. All "\\" (backslash) must be escaped as "\\\\" to comply yaml syntax. Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html).
        attribute :regexp

        # @return [Object] A boolean that controls if files that start with a '.' will be included or not.
        attribute :ignore_hidden

        # @return [String] The validation command to run before copying into place.  The path to the file to validate is passed in via '%s' which must be present as in the sshd example below. The command is passed securely so shell features like expansion and pipes won't work.
        attribute :validate
        validates :validate, type: String
      end
    end
  end
end
