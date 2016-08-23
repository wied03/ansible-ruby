# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_stat < Base
        # @return [String] The full path of the file/object to get the facts of; both forward and back slashes are accepted.
        attribute :path
        validates :path, presence: true, type: String

        # @return [TrueClass, nil] Whether to return the checksum sum of the file. As of Ansible 1.9 this is no longer a MD5, but a SHA1 instead.
        attribute :get_md5
        validates :get_md5, type: TrueClass

        # @return [TrueClass, nil] Whether to return a checksum of the file (only sha1 currently supported)
        attribute :get_checksum
        validates :get_checksum, type: TrueClass
      end
    end
  end
end
