# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates (empty) files, updates file modification stamps of existing files, and can create or remove directories. Unlike M(file), does not modify ownership, permissions or manipulate links.
      class Win_file < Base
        # @return [Object] path to the file being managed.  Aliases: I(dest), I(name)
        attribute :path
        validates :path, presence: true

        # @return [:file, :directory, :touch, :absent, nil] If C(directory), all immediate subdirectories will be created if they do not exist. If C(file), the file will NOT be created if it does not exist, see the M(copy) or M(template) module if you want that behavior.  If C(absent), directories will be recursively deleted, and files will be removed. If C(touch), an empty file will be created if the c(path) does not exist, while an existing file or directory will receive updated file access and modification times (similar to the way `touch` works from the command line).
        attribute :state
        validates :state, inclusion: {:in=>[:file, :directory, :touch, :absent], :message=>"%{value} needs to be :file, :directory, :touch, :absent"}, allow_nil: true
      end
    end
  end
end
