# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sets attributes of files, symlinks, and directories, or removes files/symlinks/directories. Many other modules support the same options as the C(file) module - including M(copy), M(template), and M(assemble).
      # For Windows targets, use the M(win_file) module instead.
      class File < Base
        # @return [String] Path to the file being managed.
        attribute :path
        validates :path, presence: true, type: String

        # @return [:absent, :directory, :file, :hard, :link, :touch, nil] If C(directory), all intermediate subdirectories will be created if they do not exist. Since Ansible 1.7 they will be created with the supplied permissions. If C(file), the file will NOT be created if it does not exist; see the C(touch) value or the M(copy) or M(template) module if you want that behavior.  If C(link), the symbolic link will be created or changed. Use C(hard) for hardlinks. If C(absent), directories will be recursively deleted, and files or symlinks will be unlinked. Note that C(absent) will not cause C(file) to fail if the C(path) does not exist as the state did not change. If C(touch) (new in 1.4), an empty file will be created if the C(path) does not exist, while an existing file or directory will receive updated file access and modification times (similar to the way `touch` works from the command line).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :directory, :file, :hard, :link, :touch], :message=>"%{value} needs to be :absent, :directory, :file, :hard, :link, :touch"}, allow_nil: true

        # @return [String, nil] path of the file to link to (applies only to C(state=link) and C(state=hard)). Will accept absolute, relative and nonexisting paths. Relative paths are relative to the file being created (C(path)) which is how the UNIX command C(ln -s SRC DEST) treats relative paths.
        attribute :src
        validates :src, type: String

        # @return [:yes, :no, nil] recursively set the specified file attributes (applies only to directories)
        attribute :recurse
        validates :recurse, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] force the creation of the symlinks in two cases: the source file does not exist (but will appear later); the destination exists and is a file (so, we need to unlink the "path" file and create symlink to the "src" file in place of it).
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This flag indicates that filesystem links, if they exist, should be followed.,Previous to Ansible 2.5, this was C(no) by default.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] This parameter indicates the time the file's modification time should be set to,Should be C(preserve) when no modification is required, C(YYYYMMDDHHMM.SS) when using default time format, or C(now),Default is None meaning that C(preserve) is the default for C(state=[file,directory,link,hard]) and C(now) is default for C(state=touch)
        attribute :modification_time
        validates :modification_time, type: String

        # @return [String, nil] When used with C(modification_time), indicates the time format that must be used.,Based on default Python format (see time.strftime doc)
        attribute :modification_time_format
        validates :modification_time_format, type: String

        # @return [String, nil] This parameter indicates the time the file's access time should be set to,Should be C(preserve) when no modification is required, C(YYYYMMDDHHMM.SS) when using default time format, or C(now),Default is None meaning that C(preserve) is the default for C(state=[file,directory,link,hard]) and C(now) is default for C(state=touch)
        attribute :access_time
        validates :access_time, type: String

        # @return [String, nil] When used with C(access_time), indicates the time format that must be used.,Based on default Python format (see time.strftime doc)
        attribute :access_time_format
        validates :access_time_format, type: String
      end
    end
  end
end
