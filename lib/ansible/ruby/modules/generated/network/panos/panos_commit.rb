# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # PanOS module that will commit firewall's candidate configuration on
      # the device. The new configuration will become active immediately.
      class Panos_commit < Base
        # @return [String] IP address (or hostname) of PAN-OS device
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] password for authentication
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] username for authentication
        attribute :username
        validates :username, type: String

        # @return [Float, nil] interval for checking commit job
        attribute :interval
        validates :interval, type: Float

        # @return [Object, nil] timeout for commit job
        attribute :timeout

        # @return [Boolean, nil] if commit should be synchronous
        attribute :sync
        validates :sync, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
