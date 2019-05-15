# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage (add, remove, change) individual interface options in an interfaces-style file without having to manage the file as a whole with, say, M(template) or M(assemble). Interface has to be presented in a file.
      # Read information about interfaces from interfaces-styled files
      class Interfaces_file < Base
        # @return [String, nil] Path to the interfaces file
        attribute :dest
        validates :dest, type: String

        # @return [String, nil] Name of the interface, required for value changes or option remove
        attribute :iface
        validates :iface, type: String

        # @return [String, nil] Name of the option, required for value changes or option remove
        attribute :option
        validates :option, type: String

        # @return [Integer, nil] If I(option) is not presented for the I(interface) and I(state) is C(present) option will be added. If I(option) already exists and is not C(pre-up), C(up), C(post-up) or C(down), it's value will be updated. C(pre-up), C(up), C(post-up) and C(down) options can't be updated, only adding new options, removing existing ones or cleaning the whole option set are supported
        attribute :value
        validates :value, type: Integer

        # @return [String, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, type: String

        # @return [:present, :absent, nil] If set to C(absent) the option or section will be removed if present instead of created.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
