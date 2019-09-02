# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, assign and delete floating IPs on the cloudscale.ch IaaS service.
      # All operations are performed using the cloudscale.ch public API v1.
      # For details consult the full API documentation: U(https://www.cloudscale.ch/en/api/v1).
      # A valid API token is required for all operations. You can create as many tokens as you like using the cloudscale.ch control panel at U(https://control.cloudscale.ch).
      class Cloudscale_floating_ip < Base
        # @return [:present, :absent, nil] State of the floating IP.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Floating IP address to change.,Required to assign the IP to a different server or if I(state) is absent.
        attribute :ip
        validates :ip, type: String

        # @return [4, 6, nil] IP protocol version of the floating IP.
        attribute :ip_version
        validates :ip_version, expression_inclusion: {:in=>[4, 6], :message=>"%{value} needs to be 4, 6"}, allow_nil: true

        # @return [String, nil] UUID of the server assigned to this floating IP.,Required unless I(state) is absent.
        attribute :server
        validates :server, type: String

        # @return [56, nil] Only valid if I(ip_version) is 6.,Prefix length for the IPv6 network. Currently only a prefix of /56 can be requested. If no I(prefix_length) is present, a single address is created.
        attribute :prefix_length
        validates :prefix_length, expression_inclusion: {:in=>[56], :message=>"%{value} needs to be 56"}, allow_nil: true

        # @return [String, nil] Reverse PTR entry for this address.,You cannot set a reverse PTR entry for IPv6 floating networks. Reverse PTR entries are only allowed for single addresses.
        attribute :reverse_ptr
        validates :reverse_ptr, type: String

        # @return [String, nil] cloudscale.ch API token.,This can also be passed in the CLOUDSCALE_API_TOKEN environment variable.
        attribute :api_token
        validates :api_token, type: String

        # @return [Integer, nil] Timeout in seconds for calls to the cloudscale.ch API.
        attribute :api_timeout
        validates :api_timeout, type: Integer
      end
    end
  end
end
