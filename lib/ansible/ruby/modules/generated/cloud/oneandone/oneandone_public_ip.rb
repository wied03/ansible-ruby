# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, and remove public IPs. This module has a dependency on 1and1 >= 1.0
      class Oneandone_public_ip < Base
        # @return [:present, :absent, :update, nil] Define a public ip state to create, remove, or update.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}, allow_nil: true

        # @return [String] Authenticating API token provided by 1&1.
        attribute :auth_token
        validates :auth_token, presence: true, type: String

        # @return [Object, nil] Custom API URL. Overrides the ONEANDONE_API_URL environement variable.
        attribute :api_url

        # @return [String, nil] Reverse DNS name. maxLength=256
        attribute :reverse_dns
        validates :reverse_dns, type: String

        # @return [String, nil] ID of the datacenter where the IP will be created (only for unassigned IPs).
        attribute :datacenter
        validates :datacenter, type: String

        # @return [:IPV4, :IPV6, nil] Type of IP. Currently, only IPV4 is available.
        attribute :type
        validates :type, inclusion: {:in=>[:IPV4, :IPV6], :message=>"%{value} needs to be :IPV4, :IPV6"}, allow_nil: true

        # @return [String] The ID of the public IP used with update and delete states.
        attribute :public_ip_id
        validates :public_ip_id, presence: true, type: String

        # @return [String, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Integer, nil] Defines the number of seconds to wait when using the _wait_for methods
        attribute :wait_interval
        validates :wait_interval, type: Integer
      end
    end
  end
end
