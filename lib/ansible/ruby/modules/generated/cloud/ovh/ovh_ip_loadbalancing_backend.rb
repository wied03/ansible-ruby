# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OVH (French European hosting provider) LoadBalancing IP backends
      class Ovh_ip_loadbalancing_backend < Base
        # @return [String] Name of the LoadBalancing internal name (ip-X.X.X.X)
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The IP address of the backend to update / modify / delete
        attribute :backend
        validates :backend, presence: true, type: String

        # @return [:present, :absent, nil] Determines whether the backend is to be created/modified or deleted
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:none, :http, :icmp, :oco, nil] Determines the type of probe to use for this backend
        attribute :probe
        validates :probe, expression_inclusion: {:in=>[:none, :http, :icmp, :oco], :message=>"%{value} needs to be :none, :http, :icmp, :oco"}, allow_nil: true

        # @return [Integer, nil] Determines the weight for this backend
        attribute :weight
        validates :weight, type: Integer

        # @return [String] The endpoint to use ( for instance ovh-eu)
        attribute :endpoint
        validates :endpoint, presence: true, type: String

        # @return [String] The applicationKey to use
        attribute :application_key
        validates :application_key, presence: true, type: String

        # @return [String] The application secret to use
        attribute :application_secret
        validates :application_secret, presence: true, type: String

        # @return [String] The consumer key to use
        attribute :consumer_key
        validates :consumer_key, presence: true, type: String

        # @return [Integer, nil] The timeout in seconds used to wait for a task to be completed.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
