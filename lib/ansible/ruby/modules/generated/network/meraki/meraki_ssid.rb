# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for management of SSIDs in a Meraki wireless environment.
      class Meraki_ssid < Base
        # @return [:absent, :query, :present, nil] Specifies whether SNMP information should be queried or modified.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :query, :present], :message=>"%{value} needs to be :absent, :query, :present"}, allow_nil: true

        # @return [Object, nil] SSID number within network.
        attribute :number

        # @return [Object, nil] Name of SSID.
        attribute :name

        # @return [Object, nil] Name of organization.
        attribute :org_name

        # @return [Object, nil] ID of organization.
        attribute :org_id

        # @return [Object, nil] Name of network.
        attribute :net_name

        # @return [Object, nil] ID of network.
        attribute :net_id

        # @return [Symbol, nil] Enable or disable SSID network.
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [:open, :psk, :"open-with-radius", :"8021x-meraki", :"8021x-radius", nil] Set authentication mode of network.
        attribute :auth_mode
        validates :auth_mode, inclusion: {:in=>[:open, :psk, :"open-with-radius", :"8021x-meraki", :"8021x-radius"], :message=>"%{value} needs to be :open, :psk, :\"open-with-radius\", :\"8021x-meraki\", :\"8021x-radius\""}, allow_nil: true

        # @return [:wpa, :eap, :"wpa-eap", nil] Set encryption mode of network.
        attribute :encryption_mode
        validates :encryption_mode, inclusion: {:in=>[:wpa, :eap, :"wpa-eap"], :message=>"%{value} needs to be :wpa, :eap, :\"wpa-eap\""}, allow_nil: true

        # @return [Object, nil] Password for wireless network.,Requires auth_mode to be set to psk.
        attribute :psk

        # @return [:"WPA1 and WPA2", :"WPA2 only", nil] Encryption mode within WPA2 specification.
        attribute :wpa_encryption_mode
        validates :wpa_encryption_mode, inclusion: {:in=>[:"WPA1 and WPA2", :"WPA2 only"], :message=>"%{value} needs to be :\"WPA1 and WPA2\", :\"WPA2 only\""}, allow_nil: true

        # @return [:None, :"Click-through splash page", :Billing, :"Password-protected with Meraki RADIUS", :"Password-protected with custom RADIUS", :"Password-protected with Active Directory", :"Password-protected with LDAP", :"SMS authentication", :"Systems Manager Sentry", :"Facebook Wi-Fi", :"Google OAuth", :"Sponsored guest", nil] Set to enable splash page and specify type of splash.
        attribute :splash_page
        validates :splash_page, inclusion: {:in=>[:None, :"Click-through splash page", :Billing, :"Password-protected with Meraki RADIUS", :"Password-protected with custom RADIUS", :"Password-protected with Active Directory", :"Password-protected with LDAP", :"SMS authentication", :"Systems Manager Sentry", :"Facebook Wi-Fi", :"Google OAuth", :"Sponsored guest"], :message=>"%{value} needs to be :None, :\"Click-through splash page\", :Billing, :\"Password-protected with Meraki RADIUS\", :\"Password-protected with custom RADIUS\", :\"Password-protected with Active Directory\", :\"Password-protected with LDAP\", :\"SMS authentication\", :\"Systems Manager Sentry\", :\"Facebook Wi-Fi\", :\"Google OAuth\", :\"Sponsored guest\""}, allow_nil: true

        # @return [Object, nil] List of RADIUS servers.
        attribute :radius_servers

        # @return [Symbol, nil] Enable or disable RADIUS CoA (Change of Authorization) on SSID.
        attribute :radius_coa_enabled
        validates :radius_coa_enabled, type: Symbol

        # @return [:"Deny access", :"Allow access", nil] Set client access policy in case RADIUS servers aren't available.
        attribute :radius_failover_policy
        validates :radius_failover_policy, inclusion: {:in=>[:"Deny access", :"Allow access"], :message=>"%{value} needs to be :\"Deny access\", :\"Allow access\""}, allow_nil: true

        # @return [:"Strict priority order", :"Round robin", nil] Set load balancing policy when multiple RADIUS servers are specified.
        attribute :radius_load_balancing_policy
        validates :radius_load_balancing_policy, inclusion: {:in=>[:"Strict priority order", :"Round robin"], :message=>"%{value} needs to be :\"Strict priority order\", :\"Round robin\""}, allow_nil: true

        # @return [Symbol, nil] Enable or disable RADIUS accounting.
        attribute :radius_accounting_enabled
        validates :radius_accounting_enabled, type: Symbol

        # @return [Object, nil] List of RADIUS servers for RADIUS accounting.
        attribute :radius_accounting_servers

        # @return [:"NAT mode", :"Bridge mode", :"Layer 3 roaming", :"Layer 3 roaming with a concentrator", :VPN, nil] Method of which SSID uses to assign IP addresses.
        attribute :ip_assignment_mode
        validates :ip_assignment_mode, inclusion: {:in=>[:"NAT mode", :"Bridge mode", :"Layer 3 roaming", :"Layer 3 roaming with a concentrator", :VPN], :message=>"%{value} needs to be :\"NAT mode\", :\"Bridge mode\", :\"Layer 3 roaming\", :\"Layer 3 roaming with a concentrator\", :VPN"}, allow_nil: true

        # @return [Symbol, nil] Set whether to use VLAN tagging.
        attribute :use_vlan_tagging
        validates :use_vlan_tagging, type: Symbol

        # @return [Object, nil] Default VLAN ID.
        attribute :default_vlan_id

        # @return [Object, nil] ID number of VLAN on SSID.
        attribute :vlan_id

        # @return [Object, nil] List of VLAN tags.
        attribute :ap_tags_vlan_ids

        # @return [Symbol, nil] Enable or disable walled garden functionality.
        attribute :walled_garden_enabled
        validates :walled_garden_enabled, type: Symbol

        # @return [Object, nil] List of walled garden ranges.
        attribute :walled_garden_ranges

        # @return [1, 2, 5.5, 6, 9, 11, 12, 18, 24, 36, 48, 54, nil] Minimum bitrate (Mbps) allowed on SSID.
        attribute :min_bitrate
        validates :min_bitrate, inclusion: {:in=>[1, 2, 5.5, 6, 9, 11, 12, 18, 24, 36, 48, 54], :message=>"%{value} needs to be 1, 2, 5.5, 6, 9, 11, 12, 18, 24, 36, 48, 54"}, allow_nil: true

        # @return [:"Dual band operation", :"5 GHz band only", :"Dual band operation with Band Steering", nil] Set band selection mode.
        attribute :band_selection
        validates :band_selection, inclusion: {:in=>[:"Dual band operation", :"5 GHz band only", :"Dual band operation with Band Steering"], :message=>"%{value} needs to be :\"Dual band operation\", :\"5 GHz band only\", :\"Dual band operation with Band Steering\""}, allow_nil: true

        # @return [Object, nil] Maximum bandwidth in Mbps devices on SSID can upload.
        attribute :per_client_bandwidth_limit_up

        # @return [Object, nil] Maximum bandwidth in Mbps devices on SSID can download.
        attribute :per_client_bandwidth_limit_down

        # @return [Object, nil] The concentrator to use for 'Layer 3 roaming with a concentrator' or 'VPN'.
        attribute :concentrator_network_id
      end
    end
  end
end
