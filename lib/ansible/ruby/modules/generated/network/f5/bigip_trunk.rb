# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages trunks on a BIG-IP.
      class Bigip_trunk < Base
        # @return [String] Specifies the name of the trunk.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<Float>, Float, nil] The interfaces that are part of the trunk.,To clear the list of interfaces, specify an empty list.
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(Float)

        # @return [Object, nil] Description of the trunk.
        attribute :description

        # @return [:auto, :"maximum-bandwidth", nil] Specifies, once the trunk is configured, the policy that the trunk uses to determine which member link (interface) can handle new traffic.,When creating a new trunk, if this value is not specific, the default is C(auto).,When C(auto), specifies that the system automatically determines which interfaces can handle new traffic. For the C(auto) option, the member links must all be the same media type and speed.,When C(maximum-bandwidth), specifies that the system determines which interfaces can handle new traffic based on the members' maximum bandwidth.
        attribute :link_selection_policy
        validates :link_selection_policy, inclusion: {:in=>[:auto, :"maximum-bandwidth"], :message=>"%{value} needs to be :auto, :\"maximum-bandwidth\""}, allow_nil: true

        # @return [:"destination-mac", :"source-destination-ip", :"source-destination-mac", nil] Specifies the basis for the hash that the system uses as the frame distribution algorithm. The system uses the resulting hash to determine which interface to use for forwarding traffic.,When creating a new trunk, if this parameter is not specified, the default is C(source-destination-ip).,When C(source-destination-mac), specifies that the system bases the hash on the combined MAC addresses of the source and the destination.,When C(destination-mac), specifies that the system bases the hash on the MAC address of the destination.,When C(source-destination-ip), specifies that the system bases the hash on the combined IP addresses of the source and the destination.
        attribute :frame_distribution_hash
        validates :frame_distribution_hash, inclusion: {:in=>[:"destination-mac", :"source-destination-ip", :"source-destination-mac"], :message=>"%{value} needs to be :\"destination-mac\", :\"source-destination-ip\", :\"source-destination-mac\""}, allow_nil: true

        # @return [Boolean, nil] When C(yes), specifies that the system supports the link aggregation control protocol (LACP), which monitors the trunk by exchanging control packets over the member links to determine the health of the links.,If LACP detects a failure in a member link, it removes the link from the link aggregation.,When creating a new trunk, if this parameter is not specified, LACP is C(no).,LACP is disabled by default for backward compatibility. If this does not apply to your network, we recommend that you enable LACP.
        attribute :lacp_enabled
        validates :lacp_enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:active, :passive, nil] Specifies the operation mode for link aggregation control protocol (LACP), if LACP is enabled for the trunk.,When creating a new trunk, if this parameter is not specified, the default is C(active).,When C(active), specifies that the system periodically sends control packets regardless of whether the partner system has issued a request.,When C(passive), specifies that the system sends control packets only when the partner system has issued a request.
        attribute :lacp_mode
        validates :lacp_mode, inclusion: {:in=>[:active, :passive], :message=>"%{value} needs to be :active, :passive"}, allow_nil: true

        # @return [:long, :short, nil] Specifies the rate at which the system sends the LACP control packets.,When creating a new trunk, if this parameter is not specified, the default is C(long).,When C(long), specifies that the system sends an LACP control packet every 30 seconds.,When C(short), specifies that the system sends an LACP control packet every 1 seconds.
        attribute :lacp_timeout
        validates :lacp_timeout, inclusion: {:in=>[:long, :short], :message=>"%{value} needs to be :long, :short"}, allow_nil: true

        # @return [Object, nil] Specifies the ether-type value used for the packets handled on this trunk when it is a member in a QinQ vlan.,The ether-type can be set to any string containing a valid hexadecimal 16 bits number, or any of the well known ether-types; C(0x8100), C(0x9100), C(0x88a8).,This parameter is not supported on Virtual Editions.,You should always wrap this value in quotes to prevent Ansible from interpreting the value as a literal hexadecimal number and converting it to an integer.
        attribute :qinq_ethertype

        # @return [:present, :absent, nil] When C(present), ensures that the resource exists.,When C(absent), ensures the resource is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
