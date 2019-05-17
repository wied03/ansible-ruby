# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/modify/remove networking bandwidth and associated resources for a type of traffic on a particular link.
      class Flowadm < Base
        # @return [String] - A flow is defined as a set of attributes based on Layer 3 and Layer 4 headers, which can be used to identify a protocol, service, or a zone.\r\n
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specifiies a link to configure flow on.
        attribute :link
        validates :link, type: String

        # @return [Object, nil] Identifies a network flow by the local IP address.
        attribute :local_ip

        # @return [Object, nil] Identifies a network flow by the remote IP address.
        attribute :remote_ip

        # @return [String, nil] - Specifies a Layer 4 protocol to be used. It is typically used in combination with I(local_port) to identify the service that needs special attention.\r\n
        attribute :transport
        validates :transport, type: String

        # @return [Integer, nil] Identifies a service specified by the local port.
        attribute :local_port
        validates :local_port, type: Integer

        # @return [String, nil] - Identifies the 8-bit differentiated services field (as defined in RFC 2474). The optional dsfield_mask is used to state the bits of interest in the differentiated services field when comparing with the dsfield value. Both values must be in hexadecimal.\r\n
        attribute :dsfield
        validates :dsfield, type: String

        # @return [String, nil] - Sets the full duplex bandwidth for the flow. The bandwidth is specified as an integer with one of the scale suffixes(K, M, or G for Kbps, Mbps, and Gbps). If no units are specified, the input value will be read as Mbps.\r\n
        attribute :maxbw
        validates :maxbw, type: String

        # @return [:low, :medium, :high, nil] Sets the relative priority for the flow.
        attribute :priority
        validates :priority, inclusion: {:in=>[:low, :medium, :high], :message=>"%{value} needs to be :low, :medium, :high"}, allow_nil: true

        # @return [Symbol, nil] Specifies that the configured flow is temporary. Temporary flows do not persist across reboots.
        attribute :temporary
        validates :temporary, type: Symbol

        # @return [:absent, :present, :resetted, nil] Create/delete/enable/disable an IP address on the network interface.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :resetted], :message=>"%{value} needs to be :absent, :present, :resetted"}, allow_nil: true
      end
    end
  end
end
