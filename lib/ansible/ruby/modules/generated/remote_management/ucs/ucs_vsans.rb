# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures VSANs on Cisco UCS Manager.
      # Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).
      class Ucs_vsans < Base
        # @return [:present, :absent, nil] If C(present), will verify VSANs are present and will create if needed.,If C(absent), will verify VSANs are absent and will delete if needed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name assigned to the VSAN.,This name can be between 1 and 32 alphanumeric characters.,You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).,You cannot change this name after the VSAN is created.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The unique identifier assigned to the VSAN.,The ID can be a string between '1' and '4078', or between '4080' and '4093'. '4079' is a reserved VSAN ID.,In addition, if you plan to use FC end-host mode, the range between '3840' to '4079' is also a reserved VSAN ID range.,Optional if state is absent.
        attribute :vsan_id
        validates :vsan_id, presence: true, type: String

        # @return [String] The unique string identifier assigned to the VLAN used for Fibre Channel connections.,Note that Cisco UCS Manager uses VLAN '4048'.  See the UCS Manager configuration guide if you want to assign '4048' to a VLAN.,Optional if state is absent.
        attribute :vlan_id
        validates :vlan_id, presence: true, type: String

        # @return [:disabled, :enabled, nil] Fibre Channel zoning configuration for the Cisco UCS domain.,Fibre Channel zoning can be set to one of the following values:,disabled — The upstream switch handles Fibre Channel zoning, or Fibre Channel zoning is not implemented for the Cisco UCS domain.,enabled — Cisco UCS Manager configures and controls Fibre Channel zoning for the Cisco UCS domain.,If you enable Fibre Channel zoning, do not configure the upstream switch with any VSANs that are being used for Fibre Channel zoning.
        attribute :fc_zoning
        validates :fc_zoning, inclusion: {:in=>[:disabled, :enabled], :message=>"%{value} needs to be :disabled, :enabled"}, allow_nil: true

        # @return [:common, :A, :B, nil] The fabric configuration of the VSAN.  This can be one of the following:,common - The VSAN maps to the same VSAN ID in all available fabrics.,A - The VSAN maps to the a VSAN ID that exists only in fabric A.,B - The VSAN maps to the a VSAN ID that exists only in fabric B.
        attribute :fabric
        validates :fabric, inclusion: {:in=>[:common, :A, :B], :message=>"%{value} needs to be :common, :A, :B"}, allow_nil: true
      end
    end
  end
end
