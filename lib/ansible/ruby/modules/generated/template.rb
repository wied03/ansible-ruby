# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Template < Base
        # @return [String] Path of a Jinja2 formatted template on the Ansible controller. This can be a relative or absolute path.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Location to render the template to on the remote machine.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] the default is C(yes), which will replace the remote file when contents are different than the source.  If C(no), the file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
