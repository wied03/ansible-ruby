# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, enable, disable and remove network offerings.
      class Cs_network_offering < Base
        # @return [:enabled, :present, :disabled, :absent, nil] State of the network offering.
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :present, :disabled, :absent], :message=>"%{value} needs to be :enabled, :present, :disabled, :absent"}, allow_nil: true

        # @return [String, nil] Display text of the network offerings.
        attribute :display_text
        validates :display_text, type: String

        # @return [:Shared, :Isolated, nil] Guest type of the network offering.
        attribute :guest_ip_type
        validates :guest_ip_type, inclusion: {:in=>[:Shared, :Isolated], :message=>"%{value} needs to be :Shared, :Isolated"}, allow_nil: true

        # @return [String] The name of the network offering.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:Dns, :PortForwarding, :Dhcp, :SourceNat, :UserData, :Firewall, :StaticNat, :Vpn, :Lb, nil] Services supported by the network offering.,One or more of the choices.
        attribute :supported_services
        validates :supported_services, inclusion: {:in=>[:Dns, :PortForwarding, :Dhcp, :SourceNat, :UserData, :Firewall, :StaticNat, :Vpn, :Lb], :message=>"%{value} needs to be :Dns, :PortForwarding, :Dhcp, :SourceNat, :UserData, :Firewall, :StaticNat, :Vpn, :Lb"}, allow_nil: true

        # @return [String, nil] The traffic type for the network offering.
        attribute :traffic_type
        validates :traffic_type, type: String

        # @return [Object, nil] The availability of network offering. Default value is Optional
        attribute :availability

        # @return [Symbol, nil] Whether the network offering has IP conserve mode enabled.
        attribute :conserve_mode
        validates :conserve_mode, type: Symbol

        # @return [:internallbprovider, :publiclbprovider, nil] Network offering details in key/value pairs.,with service provider as a value
        attribute :details
        validates :details, inclusion: {:in=>[:internallbprovider, :publiclbprovider], :message=>"%{value} needs to be :internallbprovider, :publiclbprovider"}, allow_nil: true

        # @return [:allow, :deny, nil] Whether the default egress policy is allow or to deny.
        attribute :egress_default_policy
        validates :egress_default_policy, inclusion: {:in=>[:allow, :deny], :message=>"%{value} needs to be :allow, :deny"}, allow_nil: true

        # @return [Object, nil] True if network offering supports persistent networks,defaulted to false if not specified
        attribute :persistent

        # @return [Symbol, nil] If true keepalive will be turned on in the loadbalancer.,At the time of writing this has only an effect on haproxy.,the mode http and httpclose options are unset in the haproxy conf file.
        attribute :keepalive_enabled
        validates :keepalive_enabled, type: Symbol

        # @return [Object, nil] Maximum number of concurrent connections supported by the network offering.
        attribute :max_connections

        # @return [Object, nil] Data transfer rate in megabits per second allowed.
        attribute :network_rate

        # @return [Object, nil] Desired service capabilities as part of network offering.
        attribute :service_capabilities

        # @return [Object, nil] The service offering name or ID used by virtual router provider.
        attribute :service_offering

        # @return [Object, nil] Provider to service mapping.,If not specified, the provider for the service will be mapped to the default provider on the physical network.
        attribute :service_provider

        # @return [Symbol, nil] Wheter the network offering supports specifying IP ranges.,Defaulted to C(no) by the API if not specified.
        attribute :specify_ip_ranges
        validates :specify_ip_ranges, type: Symbol

        # @return [Symbol, nil] Whether the network offering supports vlans or not.
        attribute :specify_vlan
        validates :specify_vlan, type: Symbol
      end
    end
  end
end
