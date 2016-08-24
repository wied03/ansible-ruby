# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Fetch < Base
        # @return [String] The file on the remote system to fetch. This I(must) be a file, not a directory. Recursive fetching may be supported in a later release.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] A directory to save the file into. For example, if the I(dest) directory is C(/backup) a I(src) file named C(/etc/profile) on host C(host.example.com), would be saved into C(/backup/host.example.com/etc/profile)
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] Makes it fails when the source file is missing.
        attribute :fail_on_missing
        validates :fail_on_missing, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Verify that the source and destination checksums match after the files are fetched.
        attribute :validate_checksum
        validates :validate_checksum, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Allows you to override the default behavior of appending hostname/path/to/file to the destination.  If dest ends with '/', it will use the basename of the source file, similar to the copy module. Obviously this is only handy if the filenames are unique.
        attribute :flat
        validates :flat, type: String
      end
    end
  end
end