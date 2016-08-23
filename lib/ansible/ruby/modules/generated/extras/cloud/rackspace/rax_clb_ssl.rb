# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_clb_ssl < Base
        # @return [String] Name or ID of the load balancer on which to manage SSL termination.
        attribute :loadbalancer
        validates :loadbalancer, presence: true, type: String

        # @return [:present, :absent, nil] If set to "present", SSL termination will be added to this load balancer.,If "absent", SSL termination will be removed instead.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [TrueClass, nil] If set to "false", temporarily disable SSL termination without discarding,existing credentials.
        attribute :enabled
        validates :enabled, type: TrueClass

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

        # @return [TrueClass, nil] If "true", the load balancer will *only* accept secure traffic.
        attribute :secure_traffic_only
        validates :secure_traffic_only, type: TrueClass

        # @return [Object, nil] If "true", the load balancer will redirect HTTP traffic to HTTPS.,Requires "secure_traffic_only" to be true. Incurs an implicit wait if SSL,termination is also applied or removed.
        attribute :https_redirect

        # @return [TrueClass, nil] Wait for the balancer to be in state "running" before turning.
        attribute :wait
        validates :wait, type: TrueClass

        # @return [Integer, nil] How long before "wait" gives up, in seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
