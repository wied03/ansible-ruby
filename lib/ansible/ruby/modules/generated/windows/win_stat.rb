# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Returns information about a Windows file.
      # For non-Windows targets, use the M(stat) module instead.
      class Win_stat < Base
        # @return [String] The full path of the file/object to get the facts of; both forward and back slashes are accepted.
        attribute :path
        validates :path, presence: true, type: String

        # @return [:yes, :no, nil] Whether to return the checksum sum of the file. Between Ansible 1.9 and 2.2 this is no longer an MD5, but a SHA1 instead. As of Ansible 2.3 this is back to an MD5. Will return None if host is unable to use specified algorithm.,The default of this option changed from C(yes) to C(no) in Ansible 2.5 and will be removed altogether in Ansible 2.9.,Use C(get_checksum=true) with C(checksum_algorithm=md5) to return an md5 hash under the C(checksum) return value.
        attribute :get_md5
        validates :get_md5, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to return a checksum of the file (default sha1)
        attribute :get_checksum
        validates :get_checksum, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:md5, :sha1, :sha256, :sha384, :sha512, nil] Algorithm to determine checksum of file. Will throw an error if the host is unable to use specified algorithm.
        attribute :checksum_algorithm
        validates :checksum_algorithm, expression_inclusion: {:in=>[:md5, :sha1, :sha256, :sha384, :sha512], :message=>"%{value} needs to be :md5, :sha1, :sha256, :sha384, :sha512"}, allow_nil: true
      end
    end
  end
end
