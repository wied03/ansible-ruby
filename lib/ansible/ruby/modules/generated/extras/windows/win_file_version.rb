# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_file_version < Base
        # @return [String] File to get version(provide absolute path)
        attribute :path
        validates :path, presence: true, type: String
      end
    end
  end
end
