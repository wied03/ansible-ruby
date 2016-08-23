# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Copy < Base
        # @return [String] Local path to a file to copy to the remote server; can be absolute or relative. If path is a directory, it is copied recursively. In this case, if path ends with "/", only inside contents of that directory are copied to destination. Otherwise, if it does not end with "/", the directory itself with all contents is copied. This behavior is similar to Rsync.
        attribute :src
        validates :src, type: String

        # @return [Object] When used instead of 'src', sets the contents of a file directly to the specified value. This is for simple values, for anything complex or with formatting please switch to the template module.
        attribute :content

        # @return [String] Remote absolute path where the file should be copied to. If src is a directory, this must be a directory too.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] the default is C(yes), which will replace the remote file when contents are different than the source. If C(no), the file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] When doing a recursive copy set the mode for the directories. If this is not set we will use the system defaults. The mode is only set on directories which are newly created, and will not affect those that already existed.
        attribute :directory_mode

        # @return [String] If False, it will search for src at originating/master machine, if True it will go to the remote/target machine for the src. Default is False.,Currently remote_src does not support recursive copying.
        attribute :remote_src
        validates :remote_src, inclusion: {:in=>[:True, :False], :message=>"%{value} needs to be :True, :False"}, allow_nil: true

        # @return [String] This flag indicates that filesystem links, if they exist, should be followed.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
