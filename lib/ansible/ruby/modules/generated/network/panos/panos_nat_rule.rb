# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # - Create a policy nat rule. Keep in mind that we can either end up configuring source NAT, destination NAT, or both. Instead of splitting it into two we will make a fair attempt to determine which one the user wants.

      class Panos_nat_rule < Base
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

        # @return [Object, nil] The action to be taken.  Supported values are I(add)/I(update)/I(find)/I(delete).
        attribute :operation

        # @return [String] name of the SNAT rule
        attribute :rule_name
        validates :rule_name, presence: true, type: String

        # @return [Array<String>, String] list of source zones
        attribute :source_zone
        validates :source_zone, presence: true, type: TypeGeneric.new(String)

        # @return [String] destination zone
        attribute :destination_zone
        validates :destination_zone, presence: true, type: String

        # @return [String, nil] list of source addresses
        attribute :source_ip
        validates :source_ip, type: String

        # @return [String, nil] list of destination addresses
        attribute :destination_ip
        validates :destination_ip, type: String

        # @return [String, nil] service
        attribute :service
        validates :service, type: String

        # @return [String, nil] type of source translation
        attribute :snat_type
        validates :snat_type, type: String

        # @return [String, nil] type of source translation. Supported values are I(translated-address)/I(translated-address).
        attribute :snat_address_type
        validates :snat_address_type, type: String

        # @return [Object, nil] Source NAT translated address. Used with Static-IP translation.
        attribute :snat_static_address

        # @return [Object, nil] Source NAT translated address. Used with Dynamic-IP and Dynamic-IP-and-Port.
        attribute :snat_dynamic_address

        # @return [String, nil] snat interface
        attribute :snat_interface
        validates :snat_interface, type: String

        # @return [Object, nil] snat interface address
        attribute :snat_interface_address

        # @return [:yes, :no, nil] bidirectional flag
        attribute :snat_bidirectional
        validates :snat_bidirectional, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] dnat translated address
        attribute :dnat_address
        validates :dnat_address, type: String

        # @return [String, nil] dnat translated port
        attribute :dnat_port
        validates :dnat_port, type: String

        # @return [:yes, :no, nil] Commit configuration if changed.
        attribute :commit
        validates :commit, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
