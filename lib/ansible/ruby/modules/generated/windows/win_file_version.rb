# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get DLL or EXE file build version.
      class Win_file_version < Base
        # @return [String] File to get version.,Always provide absolute path.
        attribute :path
        validates :path, presence: true, type: String
      end
    end
  end
end
