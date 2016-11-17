# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BGP neighbors configurations on NX-OS switches.
      class Nxos_bgp_neighbor < Base
        # @return [Integer] BGP autonomous system number. Valid values are string, Integer in ASPLAIN or ASDOT notation.
        attribute :asn
        validates :asn, presence: true, type: Integer

        # @return [String, nil] Name of the VRF. The name 'default' is a valid VRF representing the global bgp.
        attribute :vrf
        validates :vrf, type: String

        # @return [String] Neighbor Identifier. Valid values are string. Neighbors may use IPv4 or IPv6 notation, with or without prefix length.
        attribute :neighbor
        validates :neighbor, presence: true, type: String

        # @return [String, nil] Description of the neighbor.
        attribute :description
        validates :description, type: String

        # @return [:true, :false, nil] Configure whether or not to check for directly connected peer.
        attribute :connected_check
        validates :connected_check, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Configure whether or not to negotiate capability with this neighbor.
        attribute :capability_negotiation
        validates :capability_negotiation, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Configure whether or not to enable dynamic capability.
        attribute :dynamic_capability
        validates :dynamic_capability, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify multihop TTL for a remote peer. Valid values are integers between 2 and 255, or keyword 'default' to disable this property.
        attribute :ebgp_multihop

        # @return [Integer, nil] Specify the local-as number for the eBGP neighbor. Valid values are String or Integer in ASPLAIN or ASDOT notation, or 'default', which means not to configure it.
        attribute :local_as
        validates :local_as, type: Integer

        # @return [:enable, :disable, :inherit, nil] Specify whether or not to enable log messages for neighbor up/down event.
        attribute :log_neighbor_changes
        validates :log_neighbor_changes, inclusion: {:in=>[:enable, :disable, :inherit], :message=>"%{value} needs to be :enable, :disable, :inherit"}, allow_nil: true

        # @return [:true, :false, nil] Specify whether or not to shut down this neighbor under memory pressure.
        attribute :low_memory_exempt
        validates :low_memory_exempt, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify Maximum number of peers for this neighbor prefix Valid values are between 1 and 1000, or 'default', which does not impose the limit.
        attribute :maximum_peers

        # @return [Object, nil] Specify the password for neighbor. Valid value is string.
        attribute :pwd

        # @return [:"3des", :cisco_type_7, nil] Specify the encryption type the password will use. Valid values are '3des' or 'cisco_type_7' encryption.
        attribute :pwd_type
        validates :pwd_type, inclusion: {:in=>[:"3des", :cisco_type_7], :message=>"%{value} needs to be :\"3des\", :cisco_type_7"}, allow_nil: true

        # @return [Integer, nil] Specify Autonomous System Number of the neighbor. Valid values are String or Integer in ASPLAIN or ASDOT notation, or 'default', which means not to configure it.
        attribute :remote_as
        validates :remote_as, type: Integer

        # @return [:enable, :disable, :all, :"replace-as", nil] Specify the config to remove private AS number from outbound updates. Valid values are 'enable' to enable this config, 'disable' to disable this config, 'all' to remove all private AS number, or 'replace-as', to replace the private AS number.
        attribute :remove_private_as
        validates :remove_private_as, inclusion: {:in=>[:enable, :disable, :all, :"replace-as"], :message=>"%{value} needs to be :enable, :disable, :all, :\"replace-as\""}, allow_nil: true

        # @return [:true, :false, nil] Configure to administratively shutdown this neighbor.
        attribute :shutdown
        validates :shutdown, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:true, :false, nil] Configure to suppress 4-byte AS Capability.
        attribute :suppress_4_byte_as
        validates :suppress_4_byte_as, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object, nil] Specify keepalive timer value. Valid values are integers between 0 and 3600 in terms of seconds, or 'default', which is 60.
        attribute :timers_keepalive

        # @return [Object, nil] Specify holdtime timer value. Valid values are integers between 0 and 3600 in terms of seconds, or 'default', which is 180.
        attribute :timers_holdtime

        # @return [:true, :false, nil] Specify whether or not to only allow passive connection setup. Valid values are 'true', 'false', and 'default', which defaults to 'false'. This property can only be configured when the neighbor is in 'ip' address format without prefix length. This property and the transport_passive_mode property are mutually exclusive.
        attribute :transport_passive_only
        validates :transport_passive_only, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [String, nil] Specify source interface of BGP session and updates.
        attribute :update_source
        validates :update_source, type: String

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
