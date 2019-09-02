# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(win_copy) module copies a file on the local box to remote windows locations.
      # For non-Windows targets, use the M(copy) module instead.
      class Win_copy < Base
        # @return [String, nil] When used instead of C(src), sets the contents of a file directly to the specified value. This is for simple values, for anything complex or with formatting please switch to the template module.
        attribute :content
        validates :content, type: String

        # @return [:yes, :no, nil] This option controls the autodecryption of source files using vault.
        attribute :decrypt
        validates :decrypt, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Remote absolute path where the file should be copied to. If src is a directory, this must be a directory too.,Use \ for path separators or \\ when in "double quotes".,If C(dest) ends with \ then source or the contents of source will be copied to the directory without renaming.,If C(dest) is a nonexistent path, it will only be created if C(dest) ends with "/" or "\", or C(src) is a directory.,If C(src) and C(dest) are files and if the parent directory of C(dest) doesn't exist, then the task will fail.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] If set to C(yes), the file will only be transferred if the content is different than destination.,If set to C(no), the file will only be transferred if the destination does not exist.,If set to C(no), no checksuming of the content is performed which can help improve performance on larger files.
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This flag indicates that filesystem links in the source tree, if they exist, should be followed.
        attribute :local_follow
        validates :local_follow, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), it will search for src at originating/master machine.,If C(yes), it will go to the remote/target machine for the src.
        attribute :remote_src
        validates :remote_src, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Local path to a file to copy to the remote server; can be absolute or relative.,If path is a directory, it is copied (including the source folder name) recursively to C(dest).,If path is a directory and ends with "/", only the inside contents of that directory are copied to the destination. Otherwise, if it does not end with "/", the directory itself with all contents is copied.,If path is a file and dest ends with "\", the file is copied to the folder with the same filename.
        attribute :src
        validates :src, presence: true, type: String
      end
    end
  end
end
