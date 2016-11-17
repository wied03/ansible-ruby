# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(unarchive) module unpacks an archive. By default, it will copy the source file from the local system to the target before unpacking - set remote_src=yes to unpack an archive which already exists on the target..
      class Unarchive < Base
        # @return [String] If remote_src=no (default), local path to archive file to copy to the target server; can be absolute or relative. If remote_src=yes, path on the target server to existing archive file to unpack.,If remote_src=yes and src contains ://, the remote machine will download the file from the url first. (version_added 2.0)
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Remote absolute path where the archive should be unpacked
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] If true, the file is copied from local 'master' to the target machine, otherwise, the plugin will look for src archive at the target machine.,This option has been deprecated in favor of C(remote_src),This option is mutually exclusive with C(remote_src).
        attribute :copy
        validates :copy, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] a filename, when it already exists, this step will B(not) be run.
        attribute :creates

        # @return [:yes, :no, nil] If set to True, return the list of files that are contained in the tarball.
        attribute :list_files
        validates :list_files, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] List the directory and file entries that you would like to exclude from the unarchive action.
        attribute :exclude

        # @return [Boolean, nil] Do not replace existing files that are newer than files from the archive.
        attribute :keep_newer
        validates :keep_newer, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Specify additional options by passing in an array.
        attribute :extra_opts

        # @return [:yes, :no, nil] Set to C(yes) to indicate the archived file is already on the remote system and not local to the Ansible controller.,This option is mutually exclusive with C(copy).
        attribute :remote_src
        validates :remote_src, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This only applies if using a https url as the source of the file.,This should only set to C(no) used on personally controlled sites using self-signed cer,Prior to 2.2 the code worked as if this was set to C(yes).
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
