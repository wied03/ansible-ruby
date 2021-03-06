# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates temporary files and directories.
      # For non-Windows targets, please use the M(tempfile) module instead.
      class Win_tempfile < Base
        # @return [:directory, :file, nil] Whether to create file or directory.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:directory, :file], :message=>"%{value} needs to be :directory, :file"}, allow_nil: true

        # @return [String, nil] Location where temporary file or directory should be created.,If path is not specified default system temporary directory (%TEMP%) will be used.
        attribute :path
        validates :path, type: String

        # @return [String, nil] Prefix of file/directory name created by module.
        attribute :prefix
        validates :prefix, type: String

        # @return [String, nil] Suffix of file/directory name created by module.
        attribute :suffix
        validates :suffix, type: String
      end
    end
  end
end
