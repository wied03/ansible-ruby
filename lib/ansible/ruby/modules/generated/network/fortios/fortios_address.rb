# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provide management of firewall addresses on FortiOS devices.
      class Fortios_address < Base
        # @return [:present, :absent] Specifies if address need to be added or deleted.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Name of the address to add or delete.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:iprange, :fqdn, :ipmask, :geography, nil] Type of the address.
        attribute :type
        validates :type, inclusion: {:in=>[:iprange, :fqdn, :ipmask, :geography], :message=>"%{value} needs to be :iprange, :fqdn, :ipmask, :geography"}, allow_nil: true

        # @return [String, nil] Address value, based on type. If type=fqdn, somthing like www.google.com. If type=ipmask, you can use simple ip (192.168.0.1), ip+mask (192.168.0.1 255.255.255.0) or CIDR (192.168.0.1/32).
        attribute :value
        validates :value, type: String

        # @return [Object, nil] First ip in range (used only with type=iprange).
        attribute :start_ip

        # @return [Object, nil] Last ip in range (used only with type=iprange).
        attribute :end_ip

        # @return [String, nil] 2 letter country code (like FR).
        attribute :country
        validates :country, type: String

        # @return [String, nil] interface name the address apply to.
        attribute :interface
        validates :interface, type: String

        # @return [String, nil] free text to describe address.
        attribute :comment
        validates :comment, type: String
      end
    end
  end
end
