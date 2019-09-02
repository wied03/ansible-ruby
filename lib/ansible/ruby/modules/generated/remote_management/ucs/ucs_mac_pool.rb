# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures MAC address pools and MAC address blocks on Cisco UCS Manager.
      # Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).
      class Ucs_mac_pool < Base
        # @return [:present, :absent, nil] If C(present), will verify MAC pool is present and will create if needed.,If C(absent), will verify MAC pool is absent and will delete if needed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the MAC pool.,This name can be between 1 and 32 alphanumeric characters.,You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).,You cannot change this name after the MAC pool is created.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A description of the MAC pool.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :descrption

        # @return [:default, :sequential, nil] The Assignment Order field.,This can be one of the following:,default - Cisco UCS Manager selects a random identity from the pool.,sequential - Cisco UCS Manager selects the lowest available identity from the pool.
        attribute :order
        validates :order, expression_inclusion: {:in=>[:default, :sequential], :message=>"%{value} needs to be :default, :sequential"}, allow_nil: true

        # @return [String, nil] The first MAC address in the block of addresses.,This is the From field in the UCS Manager MAC Blocks menu.
        attribute :first_addr
        validates :first_addr, type: String

        # @return [String, nil] The last MAC address in the block of addresses.,This is the To field in the UCS Manager Add MAC Blocks menu.
        attribute :last_addr
        validates :last_addr, type: String

        # @return [String, nil] The distinguished name (dn) of the organization where the resource is assigned.
        attribute :org_dn
        validates :org_dn, type: String
      end
    end
  end
end
