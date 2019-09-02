# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage TCP profiles on a BIG-IP. Many TCP profiles; each with their own adjustments to the standard C(tcp) profile. Users of this module should be aware that many of the adjustable knobs have no module default. Instead, the default is assigned by the BIG-IP system itself which, in most cases, is acceptable.
      class Bigip_profile_tcp < Base
        # @return [String] Specifies the name of the profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specifies the profile from which this profile inherits settings.,When creating a new profile, if this parameter is not specified, the default is the system-supplied C(tcp) profile.
        attribute :parent
        validates :parent, type: String

        # @return [Integer, nil] Specifies the length of time that a connection is idle (has no traffic) before the connection is eligible for deletion.,When creating a new profile, if this parameter is not specified, the remote device will choose a default value appropriate for the profile, based on its C(parent) profile.,When a number is specified, indicates the number of seconds that the TCP connection can remain idle before the system deletes it.,When C(0), or C(indefinite), specifies that the system does not delete TCP connections regardless of how long they remain idle.
        attribute :idle_timeout
        validates :idle_timeout, type: Integer

        # @return [Symbol, nil] Specifies that connections in a TIME-WAIT state are reused, if a SYN packet, indicating a request for a new connection, is received.,When C(no), connections in a TIME-WAIT state remain unused for a specified length of time.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :time_wait_recycle
        validates :time_wait_recycle, type: Symbol

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the profile exists.,When C(absent), ensures the profile is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
