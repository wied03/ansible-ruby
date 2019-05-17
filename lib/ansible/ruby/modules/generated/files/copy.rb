# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(copy) module copies a file from the local or remote machine to a location on the remote machine. Use the M(fetch) module to copy files from remote locations to the local box. If you need variable interpolation in copied files, use the M(template) module.
      # For Windows targets, use the M(win_copy) module instead.
      class Copy < Base
        # @return [String, nil] Local path to a file to copy to the remote server; can be absolute or relative. If path is a directory, it is copied recursively. In this case, if path ends with "/", only inside contents of that directory are copied to destination. Otherwise, if it does not end with "/", the directory itself with all contents is copied. This behavior is similar to Rsync.
        attribute :src
        validates :src, type: String

        # @return [String, nil] When used instead of I(src), sets the contents of a file directly to the specified value. For anything advanced or with formatting also look at the template module.
        attribute :content
        validates :content, type: String

        # @return [String] Remote absolute path where the file should be copied to. If I(src) is a directory, this must be a directory too. If I(dest) is a nonexistent path and if either I(dest) ends with "/" or I(src) is a directory, I(dest) is created. If I(src) and I(dest) are files, the parent directory of I(dest) isn't created: the task fails if it doesn't already exist.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] the default is C(yes), which will replace the remote file when contents are different than the source. If C(no), the file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, Array<String>, String, nil] Mode the file or directory should be. For those used to I(/usr/bin/chmod) remember that modes are actually octal numbers. You must either add a leading zero so that Ansible's YAML parser knows it is an octal number (like C(0644) or C(01777)) or quote it (like C('644') or C('1777')) so Ansible receives a string and can do its own conversion from string into number.  Giving Ansible a number without following one of these rules will end up with a decimal number which will have unexpected results.  As of version 1.8, the mode may be specified as a symbolic mode (for example, C(u+rwx) or C(u=rw,g=r,o=r)).  As of version 2.3, the mode may also be the special string C(preserve).  C(preserve) means that the file will be given the same permissions as the source file.
        attribute :mode
        validates :mode, type: TypeGeneric.new(String)

        # @return [Object, nil] When doing a recursive copy set the mode for the directories. If this is not set we will use the system defaults. The mode is only set on directories which are newly created, and will not affect those that already existed.
        attribute :directory_mode

        # @return [:yes, :no, nil] If C(no), it will search for I(src) at originating/master machine.,If C(yes) it will go to the remote/target machine for the I(src). Default is C(no).,Currently I(remote_src) does not support recursive copying.,I(remote_src) only works with C(mode=preserve) as of version 2.6.
        attribute :remote_src
        validates :remote_src, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This flag indicates that filesystem links in the destination, if they exist, should be followed.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This flag indicates that filesystem links in the source tree, if they exist, should be followed.
        attribute :local_follow
        validates :local_follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] SHA1 checksum of the file being transferred. Used to validate that the copy of the file was successful.,If this is not provided, ansible will use the local calculated checksum of the src file.
        attribute :checksum
      end
    end
  end
end
