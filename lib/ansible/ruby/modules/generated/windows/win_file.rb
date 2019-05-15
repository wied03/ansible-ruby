# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates (empty) files, updates file modification stamps of existing files, and can create or remove directories.
      # Unlike M(file), does not modify ownership, permissions or manipulate links.
      # For non-Windows targets, use the M(file) module instead.
      class Win_file < Base
        # @return [String] Path to the file being managed.
        attribute :path
        validates :path, presence: true, type: String

        # @return [:absent, :directory, :file, :touch, nil] If C(directory), all immediate subdirectories will be created if they do not exist.,If C(file), the file will NOT be created if it does not exist, see the M(copy) or M(template) module if you want that behavior.  If C(absent), directories will be recursively deleted, and files will be removed.,If C(touch), an empty file will be created if the C(path) does not exist, while an existing file or directory will receive updated file access and modification times (similar to the way C(touch) works from the command line).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :directory, :file, :touch], :message=>"%{value} needs to be :absent, :directory, :file, :touch"}, allow_nil: true
      end
    end
  end
end
