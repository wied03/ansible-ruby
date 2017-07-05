# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Assembles a configuration file from fragments. Often a particular program will take a single configuration file and does not support a C(conf.d) style structure where it is easy to build up the configuration from multiple sources. C(assemble) will take a directory of files that can be local or have already been transferred to the system, and concatenate them together to produce a destination file. Files are assembled in string sorting order. Puppet calls this idea I(fragments).
      class Assemble < Base
        # @return [String] An already existing directory full of source files.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] A file to create using the concatenation of all of the source files.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] Create a backup file (if C(yes)), including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] A delimiter to separate the file contents.
        attribute :delimiter
        validates :delimiter, type: String

        # @return [:True, :False, nil] If False, it will search for src at originating/master machine, if True it will go to the remote/target machine for the src. Default is True.
        attribute :remote_src
        validates :remote_src, inclusion: {:in=>[:True, :False], :message=>"%{value} needs to be :True, :False"}, allow_nil: true

        # @return [Object, nil] Assemble files only if C(regex) matches the filename. If not set, all files are assembled. All "\\" (backslash) must be escaped as "\\\\" to comply yaml syntax. Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html).
        attribute :regexp

        # @return [Boolean, nil] A boolean that controls if files that start with a '.' will be included or not.
        attribute :ignore_hidden
        validates :ignore_hidden, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The validation command to run before copying into place.  The path to the file to validate is passed in via '%s' which must be present as in the sshd example below. The command is passed securely so shell features like expansion and pipes won't work.
        attribute :validate
        validates :validate, type: String
      end
    end
  end
end
