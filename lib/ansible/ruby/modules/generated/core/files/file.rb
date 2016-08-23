# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class File < Base
        # @return [Array] path to the file being managed.  Aliases: I(dest), I(name)
        attribute :path
        validates :path, presence: true, type: Array

        # @return [:file, :link, :directory, :hard, :touch, :absent, nil] If C(directory), all immediate subdirectories will be created if they do not exist, since 1.7 they will be created with the supplied permissions. If C(file), the file will NOT be created if it does not exist, see the M(copy) or M(template) module if you want that behavior.  If C(link), the symbolic link will be created or changed. Use C(hard) for hardlinks. If C(absent), directories will be recursively deleted, and files or symlinks will be unlinked. If C(touch) (new in 1.4), an empty file will be created if the C(path) does not exist, while an existing file or directory will receive updated file access and modification times (similar to the way `touch` works from the command line).
        attribute :state
        validates :state, inclusion: {:in=>[:file, :link, :directory, :hard, :touch, :absent], :message=>"%{value} needs to be :file, :link, :directory, :hard, :touch, :absent"}, allow_nil: true

        # @return [String] path of the file to link to (applies only to C(state=link)). Will accept absolute, relative and nonexisting paths. Relative paths are not expanded.
        attribute :src
        validates :src, type: String

        # @return [:yes, :no, nil] recursively set the specified file attributes (applies only to state=directory)
        attribute :recurse
        validates :recurse, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] force the creation of the symlinks in two cases: the source file does not exist (but will appear later); the destination exists and is a file (so, we need to unlink the "path" file and create symlink to the "src" file in place of it).
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This flag indicates that filesystem links, if they exist, should be followed.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
