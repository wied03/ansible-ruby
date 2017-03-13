# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(win_copy) module copies a file on the local box to remote windows locations.
      class Win_copy < Base
        # @return [String, nil] Local path to a file to copy to the remote server; can be absolute or relative. If path is a directory, it is copied recursively. In this case, if path ends with "/", only inside contents of that directory are copied to destination. Otherwise, if it does not end with "/", the directory itself with all contents is copied. This behavior is similar to Rsync.
        attribute :src
        validates :src, type: String

        # @return [String] Remote absolute path where the file should be copied to. If src is a directory, this must be a directory too. Use \\ for path separators.
        attribute :dest
        validates :dest, presence: true, type: String
      end
    end
  end
end
