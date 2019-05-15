# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(unarchive) module unpacks an archive.
      # By default, it will copy the source file from the local system to the target before unpacking.
      # Set C(remote_src=yes) to unpack an archive which already exists on the target.
      # For Windows targets, use the M(win_unzip) module instead.
      # If checksum validation is desired, use M(get_url) or M(uri) instead to fetch the file and set C(remote_src=yes).
      class Unarchive < Base
        # @return [String] If C(remote_src=no) (default), local path to archive file to copy to the target server; can be absolute or relative. If C(remote_src=yes), path on the target server to existing archive file to unpack.,If C(remote_src=yes) and C(src) contains C(://), the remote machine will download the file from the URL first. (version_added 2.0). This is only for simple cases, for full download support use the M(get_url) module.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Remote absolute path where the archive should be unpacked.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String, nil] If true, the file is copied from local 'master' to the target machine, otherwise, the plugin will look for src archive at the target machine.,This option has been deprecated in favor of C(remote_src).,This option is mutually exclusive with C(remote_src).
        attribute :copy
        validates :copy, type: String

        # @return [Object, nil] If the specified absolute path (file or directory) already exists, this step will B(not) be run.
        attribute :creates

        # @return [String, nil] If set to True, return the list of files that are contained in the tarball.
        attribute :list_files
        validates :list_files, type: String

        # @return [Object, nil] List the directory and file entries that you would like to exclude from the unarchive action.
        attribute :exclude

        # @return [String, nil] Do not replace existing files that are newer than files from the archive.
        attribute :keep_newer
        validates :keep_newer, type: String

        # @return [String, nil] Specify additional options by passing in an array.
        attribute :extra_opts
        validates :extra_opts, type: String

        # @return [String, nil] Set to C(yes) to indicate the archived file is already on the remote system and not local to the Ansible controller.,This option is mutually exclusive with C(copy).
        attribute :remote_src
        validates :remote_src, type: String

        # @return [String, nil] This only applies if using a https URL as the source of the file.,This should only set to C(no) used on personally controlled sites using self-signed certificate.,Prior to 2.2 the code worked as if this was set to C(yes).
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
