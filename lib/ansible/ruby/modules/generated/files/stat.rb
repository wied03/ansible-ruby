# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieves facts for a file similar to the linux/unix 'stat' command.
      # For Windows targets, use the M(win_stat) module instead.
      class Stat < Base
        # @return [String] The full path of the file/object to get the facts of.
        attribute :path
        validates :path, presence: true, type: String

        # @return [:yes, :no, nil] Whether to follow symlinks.
        attribute :follow
        validates :follow, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to return the md5 sum of the file.,Will return None if not a regular file or if we're unable to use md5 (Common for FIPS-140 compliant systems).,The default of this option changed from C(yes) to C(no) in Ansible 2.5 and will be removed altogether in Ansible 2.9.,Use C(get_checksum=true) with C(checksum_algorithm=md5) to return an md5 hash under the C(checksum) return value.
        attribute :get_md5
        validates :get_md5, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to return a checksum of the file (default sha1).
        attribute :get_checksum
        validates :get_checksum, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:md5, :sha1, :sha224, :sha256, :sha384, :sha512, nil] Algorithm to determine checksum of file. Will throw an error if the host is unable to use specified algorithm.,The remote host has to support the hashing method specified, C(md5) can be unavailable if the host is FIPS-140 compliant.
        attribute :checksum_algorithm
        validates :checksum_algorithm, expression_inclusion: {:in=>[:md5, :sha1, :sha224, :sha256, :sha384, :sha512], :message=>"%{value} needs to be :md5, :sha1, :sha224, :sha256, :sha384, :sha512"}, allow_nil: true

        # @return [:yes, :no, nil] Use file magic and return data about the nature of the file. this uses the 'file' utility found on most Linux/Unix systems.,This will add both `mime_type` and 'charset' fields to the return, if possible.,In 2.3 this option changed from 'mime' to 'get_mime' and the default changed to 'Yes'.
        attribute :get_mime
        validates :get_mime, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Get file attributes using lsattr tool if present.
        attribute :get_attributes
        validates :get_attributes, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
