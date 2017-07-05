# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Returns information about a Windows file
      class Win_stat < Base
        # @return [String] The full path of the file/object to get the facts of; both forward and back slashes are accepted.
        attribute :path
        validates :path, presence: true, type: String

        # @return [Boolean, nil] Whether to return the checksum sum of the file. Between Ansible 1.9 and 2.2 this is no longer an MD5, but a SHA1 instead. As of Ansible 2.3 this is back to an MD5. Will return None if host is unable to use specified algorithm.,This option is deprecated in Ansible 2.3 and is replaced with C(checksum_algorithm=md5).
        attribute :get_md5
        validates :get_md5, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether to return a checksum of the file (default sha1)
        attribute :get_checksum
        validates :get_checksum, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:md5, :sha1, :sha256, :sha384, :sha512, nil] Algorithm to determine checksum of file. Will throw an error if the host is unable to use specified algorithm.
        attribute :checksum_algorithm
        validates :checksum_algorithm, inclusion: {:in=>[:md5, :sha1, :sha256, :sha384, :sha512], :message=>"%{value} needs to be :md5, :sha1, :sha256, :sha384, :sha512"}, allow_nil: true
      end
    end
  end
end
