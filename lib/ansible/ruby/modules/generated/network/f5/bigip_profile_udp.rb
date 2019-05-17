# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage UDP profiles on a BIG-IP. Many of UDP profiles exist; each with their own adjustments to the standard C(udp) profile. Users of this module should be aware that many of the adjustable knobs have no module default. Instead, the default is assigned by the BIG-IP system itself which, in most cases, is acceptable.
      class Bigip_profile_udp < Base
        # @return [String] Specifies the name of the profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specifies the profile from which this profile inherits settings.,When creating a new profile, if this parameter is not specified, the default is the system-supplied C(udp) profile.
        attribute :parent
        validates :parent, type: String

        # @return [Integer, nil] Specifies the length of time that a connection is idle (has no traffic) before the connection is eligible for deletion.,When creating a new profile, if this parameter is not specified, the remote device will choose a default value appropriate for the profile, based on its C(parent) profile.,When a number is specified, indicates the number of seconds that the UDP connection can remain idle before the system deletes it.,When C(0), or C(indefinite), specifies that UDP connections can remain idle indefinitely.,When C(immediate), specifies that you do not want the UDP connection to remain idle, and that it is therefore immediately eligible for deletion.
        attribute :idle_timeout
        validates :idle_timeout, type: Integer

        # @return [Symbol, nil] Specifies, when C(yes), that the system load balances UDP traffic packet-by-packet.
        attribute :datagram_load_balancing
        validates :datagram_load_balancing, type: Symbol

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the profile exists.,When C(absent), ensures the profile is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
