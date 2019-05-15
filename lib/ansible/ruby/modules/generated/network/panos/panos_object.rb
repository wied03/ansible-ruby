# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Policy objects form the match criteria for policy rules and many other functions in PAN-OS. These may include address object, address groups, service objects, service groups, and tag.
      class Panos_object < Base
        # @return [String] IP address (or hostname) of PAN-OS device or Panorama management console being configured.
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

        # @return [String] The operation to be performed.  Supported values are I(add)/I(delete)/I(find).
        attribute :operation
        validates :operation, presence: true, type: String

        # @return [String, nil] The name of the address object.
        attribute :addressobject
        validates :addressobject, type: String

        # @return [String, nil] The IP address of the host or network in CIDR notation.
        attribute :address
        validates :address, type: String

        # @return [Object, nil] The type of address object definition.  Valid types are I(ip-netmask) and I(ip-range).
        attribute :address_type

        # @return [String, nil] A static group of address objects or dynamic address group.
        attribute :addressgroup
        validates :addressgroup, type: String

        # @return [Array<String>, String, nil] A group of address objects to be used in an addressgroup definition.
        attribute :static_value
        validates :static_value, type: TypeGeneric.new(String)

        # @return [Object, nil] The filter match criteria to be used in a dynamic addressgroup definition.
        attribute :dynamic_value

        # @return [String, nil] The name of the service object.
        attribute :serviceobject
        validates :serviceobject, type: String

        # @return [Object, nil] The source port to be used in a service object definition.
        attribute :source_port

        # @return [String, nil] The destination port to be used in a service object definition.
        attribute :destination_port
        validates :destination_port, type: String

        # @return [String, nil] The IP protocol to be used in a service object definition.  Valid values are I(tcp) or I(udp).
        attribute :protocol
        validates :protocol, type: String

        # @return [Object, nil] A group of service objects.
        attribute :servicegroup

        # @return [Object, nil] The group of service objects used in a servicegroup definition.
        attribute :services

        # @return [String, nil] The description of the object.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The name of an object or rule tag.
        attribute :tag_name
        validates :tag_name, type: String

        # @return [String, nil] - The color of the tag object.  Valid values are I(red, green, blue, yellow, copper, orange, purple, gray, light green, cyan, light gray, blue gray, lime, black, gold, and brown).\r\n
        attribute :color
        validates :color, type: String

        # @return [String, nil] - The name of the Panorama device group. The group must exist on Panorama. If device group is not defined it is assumed that we are contacting a firewall.\r\n
        attribute :devicegroup
        validates :devicegroup, type: String
      end
    end
  end
end
