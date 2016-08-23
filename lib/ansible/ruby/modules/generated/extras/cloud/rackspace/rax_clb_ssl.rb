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

        # @return [String] If set to "present", SSL termination will be added to this load balancer.,If "absent", SSL termination will be removed instead.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [TrueClass] If set to "false", temporarily disable SSL termination without discarding,existing credentials.
        attribute :enabled
        validates :enabled, type: TrueClass

        # @return [Array<String>] The private SSL key as a string in PEM format.
        attribute :private_key, flat_array: true
        validates :private_key, type: TypeGeneric.new(String)

        # @return [Array<String>] The public SSL certificates as a string in PEM format.
        attribute :certificate, flat_array: true
        validates :certificate, type: TypeGeneric.new(String)

        # @return [Array<String>] One or more intermediate certificate authorities as a string in PEM,format, concatenated into a single string.
        attribute :intermediate_certificate, flat_array: true
        validates :intermediate_certificate, type: TypeGeneric.new(String)

        # @return [Fixnum] The port to listen for secure traffic.
        attribute :secure_port
        validates :secure_port, type: Fixnum

        # @return [TrueClass] If "true", the load balancer will *only* accept secure traffic.
        attribute :secure_traffic_only
        validates :secure_traffic_only, type: TrueClass

        # @return [Object] If "true", the load balancer will redirect HTTP traffic to HTTPS.,Requires "secure_traffic_only" to be true. Incurs an implicit wait if SSL,termination is also applied or removed.
        attribute :https_redirect

        # @return [TrueClass] Wait for the balancer to be in state "running" before turning.
        attribute :wait
        validates :wait, type: TrueClass

        # @return [Fixnum] How long before "wait" gives up, in seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum
      end
    end
  end
end
