# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Seboolean < Base
        # @return [String] Name of the boolean to configure
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Set to C(yes) if the boolean setting should survive a reboot
        attribute :persistent
        validates :persistent, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Desired boolean value
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}
      end
    end
  end
end