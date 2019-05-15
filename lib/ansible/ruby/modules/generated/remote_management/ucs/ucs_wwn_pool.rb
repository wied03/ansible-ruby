# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures WWNNs or WWPN pools on Cisco UCS Manager.
      # Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).
      class Ucs_wwn_pool < Base
        # @return [:present, :absent, nil] If C(present), will verify WWNNs/WWPNs are present and will create if needed.,If C(absent), will verify WWNNs/WWPNs are absent and will delete if needed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the World Wide Node Name (WWNN) or World Wide Port Name (WWPN) pool.,This name can be between 1 and 32 alphanumeric characters.,You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).,You cannot change this name after the WWNN or WWPN pool is created.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:node, :port] Specify whether this is a node (WWNN) or port (WWPN) pool.,Optional if state is absent.
        attribute :purpose
        validates :purpose, presence: true, inclusion: {:in=>[:node, :port], :message=>"%{value} needs to be :node, :port"}

        # @return [Object, nil] A description of the WWNN or WWPN pool.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :description

        # @return [:default, :sequential, nil] The Assignment Order field.,This can be one of the following:,default - Cisco UCS Manager selects a random identity from the pool.,sequential - Cisco UCS Manager selects the lowest available identity from the pool.
        attribute :order
        validates :order, inclusion: {:in=>[:default, :sequential], :message=>"%{value} needs to be :default, :sequential"}, allow_nil: true

        # @return [String, nil] The first initiator in the World Wide Name (WWN) block.,This is the From field in the UCS Manager Add WWN Blocks menu.
        attribute :first_addr
        validates :first_addr, type: String

        # @return [String, nil] The last initiator in the Worlde Wide Name (WWN) block.,This is the To field in the UCS Manager Add WWN Blocks menu.,For WWxN pools, the pool size must be a multiple of ports-per-node + 1.,For example, if there are 7 ports per node, the pool size must be a multiple of 8.,If there are 63 ports per node, the pool size must be a multiple of 64.
        attribute :last_addr
        validates :last_addr, type: String

        # @return [String, nil] Org dn (distinguished name)
        attribute :org_dn
        validates :org_dn, type: String
      end
    end
  end
end
