# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a service object. Service objects are fundamental representation of the applications given src/dst ports and protocol
      class Panos_service < Base
        # @return [String] IP address (or hostname) of PAN-OS device
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] password for authentication
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] username for authentication
        attribute :username
        validates :username, type: String

        # @return [String] name of the service
        attribute :service_name
        validates :service_name, presence: true, type: String

        # @return [String] protocol for the service, should be tcp or udp
        attribute :protocol
        validates :protocol, presence: true, type: String

        # @return [String] destination port
        attribute :port
        validates :port, presence: true, type: String

        # @return [Object, nil] source port
        attribute :source_port

        # @return [Boolean, nil] commit if changed
        attribute :commit
        validates :commit, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
