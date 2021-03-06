# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set up, reconfigure, or remove SSL termination for an existing load balancer.
      class Rax_clb_ssl < Base
        # @return [String] Name or ID of the load balancer on which to manage SSL termination.
        attribute :loadbalancer
        validates :loadbalancer, presence: true, type: String

        # @return [:present, :absent, nil] If set to "present", SSL termination will be added to this load balancer.,If "absent", SSL termination will be removed instead.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] If set to "false", temporarily disable SSL termination without discarding,existing credentials.
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The private SSL key as a string in PEM format.
        attribute :private_key
        validates :private_key, type: String

        # @return [String, nil] The public SSL certificates as a string in PEM format.
        attribute :certificate
        validates :certificate, type: String

        # @return [String, nil] One or more intermediate certificate authorities as a string in PEM,format, concatenated into a single string.
        attribute :intermediate_certificate
        validates :intermediate_certificate, type: String

        # @return [Integer, nil] The port to listen for secure traffic.
        attribute :secure_port
        validates :secure_port, type: Integer

        # @return [Boolean, nil] If "true", the load balancer will *only* accept secure traffic.
        attribute :secure_traffic_only
        validates :secure_traffic_only, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] If "true", the load balancer will redirect HTTP traffic to HTTPS.,Requires "secure_traffic_only" to be true. Incurs an implicit wait if SSL,termination is also applied or removed.
        attribute :https_redirect

        # @return [Boolean, nil] Wait for the balancer to be in state "running" before turning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How long before "wait" gives up, in seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
