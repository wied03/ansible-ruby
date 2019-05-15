# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Security policies allow you to enforce rules and take action, and can be as general or specific as needed.
      class Panos_match_rule < Base
        # @return [String] IP address (or hostname) of PAN-OS device being configured.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] Username credentials to use for auth unless I(api_key) is set.
        attribute :username
        validates :username, type: String

        # @return [String] Password credentials to use for auth unless I(api_key) is set.
        attribute :password
        validates :password, presence: true, type: String

        # @return [Object, nil] API key that can be used instead of I(username)/I(password) credentials.
        attribute :api_key

        # @return [String, nil] Type of rule. Valid types are I(security) or I(nat).
        attribute :rule_type
        validates :rule_type, type: String

        # @return [String, nil] The source zone.
        attribute :source_zone
        validates :source_zone, type: String

        # @return [String] The source IP address.
        attribute :source_ip
        validates :source_ip, presence: true, type: String

        # @return [Object, nil] The source port.
        attribute :source_port

        # @return [String, nil] The source user or group.
        attribute :source_user
        validates :source_user, type: String

        # @return [String, nil] The inbound interface in a NAT rule.
        attribute :to_interface
        validates :to_interface, type: String

        # @return [String, nil] The destination zone.
        attribute :destination_zone
        validates :destination_zone, type: String

        # @return [String, nil] The destination IP address.
        attribute :destination_ip
        validates :destination_ip, type: String

        # @return [String, nil] The destination port.
        attribute :destination_port
        validates :destination_port, type: String

        # @return [String, nil] The application.
        attribute :application
        validates :application, type: String

        # @return [String, nil] The IP protocol number from 1 to 255.
        attribute :protocol
        validates :protocol, type: String

        # @return [Object, nil] URL category
        attribute :category

        # @return [String] ID of the VSYS object.
        attribute :vsys_id
        validates :vsys_id, presence: true, type: String
      end
    end
  end
end
