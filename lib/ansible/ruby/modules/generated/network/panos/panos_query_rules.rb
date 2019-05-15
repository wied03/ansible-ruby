# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # - Security policies allow you to enforce rules and take action, and can be as general or specific as needed. The policy rules are compared against the incoming traffic in sequence, and because the first rule that matches the traffic is applied, the more specific rules must precede the more general ones.

      class Panos_query_rules < Base
        # @return [String] IP address (or hostname) of PAN-OS firewall or Panorama management console being queried.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] Username credentials to use for authentication.
        attribute :username
        validates :username, type: String

        # @return [String] Password credentials to use for authentication.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] API key that can be used instead of I(username)/I(password) credentials.
        attribute :api_key
        validates :api_key, type: String

        # @return [Object, nil] Name of the application or application group to be queried.
        attribute :application

        # @return [String, nil] Name of the source security zone to be queried.
        attribute :source_zone
        validates :source_zone, type: String

        # @return [Object, nil] The source IP address to be queried.
        attribute :source_ip

        # @return [Object, nil] The source port to be queried.
        attribute :source_port

        # @return [String, nil] Name of the destination security zone to be queried.
        attribute :destination_zone
        validates :destination_zone, type: String

        # @return [String, nil] The destination IP address to be queried.
        attribute :destination_ip
        validates :destination_ip, type: String

        # @return [String, nil] The destination port to be queried.
        attribute :destination_port
        validates :destination_port, type: String

        # @return [String, nil] The protocol used to be queried.  Must be either I(tcp) or I(udp).
        attribute :protocol
        validates :protocol, type: String

        # @return [String, nil] Name of the rule tag to be queried.
        attribute :tag_name
        validates :tag_name, type: String

        # @return [Object, nil] The Panorama device group in which to conduct the query.
        attribute :devicegroup
      end
    end
  end
end
