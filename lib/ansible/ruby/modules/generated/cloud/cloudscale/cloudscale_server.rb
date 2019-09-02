# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, start, stop and delete servers on the cloudscale.ch IaaS service.
      # All operations are performed using the cloudscale.ch public API v1.
      # For details consult the full API documentation: U(https://www.cloudscale.ch/en/api/v1).
      # A valid API token is required for all operations. You can create as many tokens as you like using the cloudscale.ch control panel at U(https://control.cloudscale.ch).
      class Cloudscale_server < Base
        # @return [:running, :stopped, :absent, nil] State of the server
        attribute :state
        validates :state, expression_inclusion: {:in=>[:running, :stopped, :absent], :message=>"%{value} needs to be :running, :stopped, :absent"}, allow_nil: true

        # @return [String, nil] Name of the Server.,Either C(name) or C(uuid) are required. These options are mutually exclusive.
        attribute :name
        validates :name, type: String

        # @return [String, nil] UUID of the server.,Either C(name) or C(uuid) are required. These options are mutually exclusive.
        attribute :uuid
        validates :uuid, type: String

        # @return [String, nil] Flavor of the server.
        attribute :flavor
        validates :flavor, type: String

        # @return [String, nil] Image used to create the server.
        attribute :image
        validates :image, type: String

        # @return [Integer, nil] Size of the root volume in GB.
        attribute :volume_size_gb
        validates :volume_size_gb, type: Integer

        # @return [Integer, nil] Size of the bulk storage volume in GB.,No bulk storage volume if not set.
        attribute :bulk_volume_size_gb
        validates :bulk_volume_size_gb, type: Integer

        # @return [String, nil] List of SSH public keys.,Use the full content of your .pub file here.
        attribute :ssh_keys
        validates :ssh_keys, type: String

        # @return [Boolean, nil] Attach a public network interface to the server.
        attribute :use_public_network
        validates :use_public_network, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Attach a private network interface to the server.
        attribute :use_private_network
        validates :use_private_network, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable IPv6 on the public network interface.
        attribute :use_ipv6
        validates :use_ipv6, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] UUID of another server to create an anti-affinity group with.
        attribute :anti_affinity_with
        validates :anti_affinity_with, type: String

        # @return [Object, nil] Cloud-init configuration (cloud-config) data to use for the server.
        attribute :user_data

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
