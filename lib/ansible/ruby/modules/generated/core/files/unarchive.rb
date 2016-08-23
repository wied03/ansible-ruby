# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Unarchive < Base
        # @return [String] If copy=yes (default), local path to archive file to copy to the target server; can be absolute or relative. If copy=no, path on the target server to existing archive file to unpack.,If copy=no and src contains ://, the remote machine will download the file from the url first. (version_added 2.0)
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Remote absolute path where the archive should be unpacked
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] If true, the file is copied from local 'master' to the target machine, otherwise, the plugin will look for src archive at the target machine.
        attribute :copy
        validates :copy, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] a filename, when it already exists, this step will B(not) be run.
        attribute :creates

        # @return [:yes, :no, nil] If set to True, return the list of files that are contained in the tarball.
        attribute :list_files
        validates :list_files, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array] List the directory and file entries that you would like to exclude from the unarchive action.
        attribute :exclude
        validates :exclude, type: Array

        # @return [Object] Do not replace existing files that are newer than files from the archive.
        attribute :keep_newer

        # @return [Object] Specify additional options by passing in an array.
        attribute :extra_opts
      end
    end
  end
end
