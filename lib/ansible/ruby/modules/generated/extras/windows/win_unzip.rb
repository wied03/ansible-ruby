# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_unzip < Base
        # @return [String] File to be unzipped (provide absolute path)
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Destination of zip file (provide absolute path of directory). If it does not exist, the directory will be created.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Boolean, nil] Remove the zip file, after unzipping
        attribute :rm
        validates :rm, inclusion: {:in=>[true, false, true, false], :message=>"%{value} needs to be true, false, true, false"}, allow_nil: true

        # @return [Boolean, nil] Recursively expand zipped files within the src file.
        attribute :recurse
        validates :recurse, inclusion: {:in=>[true, false, true, false], :message=>"%{value} needs to be true, false, true, false"}, allow_nil: true

        # @return [String] If this file or directory exists the specified src will not be extracted.
        attribute :creates
        validates :creates, type: String
      end
    end
  end
end
