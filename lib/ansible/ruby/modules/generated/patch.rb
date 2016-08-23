# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Patch < Base
        # @return [String] Path of a base directory in which the patch file will be applied. May be ommitted when C(dest) option is specified, otherwise required.
        attribute :basedir
        validates :basedir, type: String

        # @return [String] Path of the file on the remote machine to be patched.,The names of the files to be patched are usually taken from the patch file, but if there's just one file to be patched it can specified with this option.
        attribute :dest
        validates :dest, type: String

        # @return [String] Path of the patch file as accepted by the GNU patch tool. If C(remote_src) is 'no', the patch source file is looked up from the module's "files" directory.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] If C(no), it will search for src at originating/master machine, if C(yes) it will go to the remote/target machine for the src. Default is C(no).
        attribute :remote_src
        validates :remote_src, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Number that indicates the smallest prefix containing leading slashes that will be stripped from each file name found in the patch file. For more information see the strip parameter of the GNU patch tool.
        attribute :strip
        validates :strip, type: String

        # @return [String] passes --backup --version-control=numbered to patch, producing numbered backup copies
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Setting to C(yes) will disable patch's heuristic for transforming CRLF line endings into LF. Line endings of src and dest must match. If set to C(no), patch will replace CRLF in src files on POSIX.
        attribute :binary
        validates :binary, type: String
      end
    end
  end
end
