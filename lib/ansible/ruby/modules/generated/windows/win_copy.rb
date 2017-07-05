# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(win_copy) module copies a file on the local box to remote windows locations.
      class Win_copy < Base
        # @return [String, nil] When used instead of C(src), sets the contents of a file directly to the specified value. This is for simple values, for anything complex or with formatting please switch to the template module.
        attribute :content
        validates :content, type: String

        # @return [String] Remote absolute path where the file should be copied to. If src is a directory, this must be a directory too.,Use \ for path separators or \\ when in "double quotes".
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Boolean, nil] If set to C(yes), the remote file will be replaced when content is different than the source.,If set to C(no), the remote file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If False, it will search for src at originating/master machine, if True it will go to the remote/target machine for the src.
        attribute :remote_src
        validates :remote_src, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Local path to a file to copy to the remote server; can be absolute or relative. If path is a directory, it is copied recursively. In this case, if path ends with "/", only inside contents of that directory are copied to destination. Otherwise, if it does not end with "/", the directory itself with all contents is copied. This behavior is similar to Rsync.
        attribute :src
        validates :src, presence: true, type: String
      end
    end
  end
end
