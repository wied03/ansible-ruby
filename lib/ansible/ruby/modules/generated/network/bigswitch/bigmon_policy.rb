# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove a bigmon out-of-band policy.
      class Bigmon_policy < Base
        # @return [String] The name of the policy.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of policy.
        attribute :policy_description
        validates :policy_description, type: String

        # @return [:forward, :drop, :"flow-gen", nil] Forward matching packets to delivery interfaces, Drop is for measure rate of matching packets, but do not forward to delivery interfaces, capture packets and write to a PCAP file, or enable NetFlow generation.
        attribute :action
        validates :action, inclusion: {:in=>[:forward, :drop, :"flow-gen"], :message=>"%{value} needs to be :forward, :drop, :\"flow-gen\""}, allow_nil: true

        # @return [Integer, nil] A priority associated with this policy. The higher priority policy takes precedence over a lower priority.
        attribute :priority
        validates :priority, type: Integer

        # @return [Integer, nil] Run policy for duration duration or until delivery_packet_count packets are delivered, whichever comes first.
        attribute :duration
        validates :duration, type: Integer

        # @return [String, nil] Date the policy becomes active
        attribute :start_time
        validates :start_time, type: String

        # @return [Integer, nil] Run policy until delivery_packet_count packets are delivered.
        attribute :delivery_packet_count
        validates :delivery_packet_count, type: Integer

        # @return [:present, :absent, nil] Whether the policy should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The controller address.
        attribute :controller
        validates :controller, presence: true, type: String

        # @return [Boolean, nil] If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Bigmon access token. If this isn't set the the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.
        attribute :access_token
      end
    end
  end
end
