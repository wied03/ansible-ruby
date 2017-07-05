# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows to manage dns zones on a univention corporate server (UCS). It uses the python API of the UCS to create a new object or edit it.
      class Udm_dns_zone < Base
        # @return [:present, :absent, nil] Whether the dns zone is present or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:forward_zone, :reverse_zone] Define if the zone is a forward or reverse DNS zone.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:forward_zone, :reverse_zone], :message=>"%{value} needs to be :forward_zone, :reverse_zone"}

        # @return [String] DNS zone name, e.g. C(example.com).
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [Array<String>, String, nil] List of appropriate name servers. Required if C(state=present).
        attribute :nameserver
        validates :nameserver, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of interface IP addresses, on which the server should response this zone. Required if C(state=present).
        attribute :interfaces
        validates :interfaces, type: TypeGeneric.new(String)

        # @return [Integer, nil] Interval before the zone should be refreshed.
        attribute :refresh
        validates :refresh, type: Integer

        # @return [Integer, nil] Interval that should elapse before a failed refresh should be retried.
        attribute :retry
        validates :retry, type: Integer

        # @return [Integer, nil] Specifies the upper limit on the time interval that can elapse before the zone is no longer authoritative.
        attribute :expire
        validates :expire, type: Integer

        # @return [Integer, nil] Minimum TTL field that should be exported with any RR from this zone.
        attribute :ttl
        validates :ttl, type: Integer

        # @return [String, nil] Contact person in the SOA record.
        attribute :contact
        validates :contact, type: String

        # @return [Object, nil] List of MX servers. (Must declared as A or AAAA records).
        attribute :mx
      end
    end
  end
end
