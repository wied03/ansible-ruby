# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieves facts for a file similar to the linux/unix 'stat' command.
      class Stat < Base
        # @return [String] The full path of the file/object to get the facts of
        attribute :path
        validates :path, presence: true, type: String

        # @return [Boolean, nil] Whether to follow symlinks
        attribute :follow
        validates :follow, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether to return the md5 sum of the file.  Will return None if we're unable to use md5 (Common for FIPS-140 compliant systems)
        attribute :get_md5
        validates :get_md5, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether to return a checksum of the file (default sha1)
        attribute :get_checksum
        validates :get_checksum, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:sha1, :sha224, :sha256, :sha384, :sha512, nil] Algorithm to determine checksum of file. Will throw an error if the host is unable to use specified algorithm.
        attribute :checksum_algorithm
        validates :checksum_algorithm, inclusion: {:in=>[:sha1, :sha224, :sha256, :sha384, :sha512], :message=>"%{value} needs to be :sha1, :sha224, :sha256, :sha384, :sha512"}, allow_nil: true

        # @return [Boolean, nil] Use file magic and return data about the nature of the file. this uses the 'file' utility found on most Linux/Unix systems.,This will add both `mime_type` and 'charset' fields to the return, if possible.
        attribute :mime
        validates :mime, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
