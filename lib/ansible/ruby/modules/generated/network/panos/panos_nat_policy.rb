# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a policy nat rule. Keep in mind that we can either end up configuring source NAT, destination NAT, or both. Instead of splitting it into two we will make a fair attempt to determine which one the user wants.
      class Panos_nat_policy < Base
        # @return [String] IP address (or hostname) of PAN-OS device
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] password for authentication
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] username for authentication
        attribute :username
        validates :username, type: String

        # @return [String] name of the SNAT rule
        attribute :rule_name
        validates :rule_name, presence: true, type: String

        # @return [Array<String>, String] list of source zones
        attribute :from_zone
        validates :from_zone, presence: true, type: TypeGeneric.new(String)

        # @return [String] destination zone
        attribute :to_zone
        validates :to_zone, presence: true, type: String

        # @return [String, nil] list of source addresses
        attribute :source
        validates :source, type: String

        # @return [String, nil] list of destination addresses
        attribute :destination
        validates :destination, type: String

        # @return [String, nil] service
        attribute :service
        validates :service, type: String

        # @return [String, nil] type of source translation
        attribute :snat_type
        validates :snat_type, type: String

        # @return [Object, nil] snat translated address
        attribute :snat_address

        # @return [String, nil] snat interface
        attribute :snat_interface
        validates :snat_interface, type: String

        # @return [Object, nil] snat interface address
        attribute :snat_interface_address

        # @return [String, nil] bidirectional flag
        attribute :snat_bidirectional
        validates :snat_bidirectional, type: String

        # @return [String, nil] dnat translated address
        attribute :dnat_address
        validates :dnat_address, type: String

        # @return [String, nil] dnat translated port
        attribute :dnat_port
        validates :dnat_port, type: String

        # @return [String, nil] attempt to override rule if one with the same name already exists
        attribute :override
        validates :override, type: String

        # @return [String, nil] commit if changed
        attribute :commit
        validates :commit, type: String
      end
    end
  end
end
