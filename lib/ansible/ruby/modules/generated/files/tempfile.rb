# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(tempfile) module creates temporary files and directories. C(mktemp) command takes different parameters on various systems, this module helps to avoid troubles related to that. Files/directories created by module are accessible only by creator. In case you need to make them world-accessible you need to use M(file) module.
      # For Windows targets, use the M(win_tempfile) module instead.
      class Tempfile < Base
        # @return [:directory, :file, nil] Whether to create file or directory.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:directory, :file], :message=>"%{value} needs to be :directory, :file"}, allow_nil: true

        # @return [Object, nil] Location where temporary file or directory should be created. If path is not specified default system temporary directory will be used.
        attribute :path

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
