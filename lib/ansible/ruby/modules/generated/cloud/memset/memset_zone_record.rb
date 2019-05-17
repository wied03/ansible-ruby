# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage DNS records in a Memset account.
      class Memset_zone_record < Base
        # @return [:absent, :present, nil] Indicates desired state of resource.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] The API key obtained from the Memset control panel.
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] The address for this record (can be IP or text string depending on record type).
        attribute :address
        validates :address, presence: true, type: String

        # @return [Object, nil] C(SRV) and C(TXT) record priority, in the range 0 > 999 (inclusive).
        attribute :priority

        # @return [String, nil] The subdomain to create.
        attribute :record
        validates :record, type: String

        # @return [:A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT] The type of DNS record to create.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT"}

        # @return [Symbol, nil] If set then the current domain is added onto the address field for C(CNAME), C(MX), C(NS) and C(SRV)record types.
        attribute :relative
        validates :relative, type: Symbol

        # @return [0, 300, 600, 900, 1800, 3600, 7200, 10800, 21600, 43200, 86400, nil] The record's TTL in seconds (will inherit zone's TTL if not explicitly set). This must be a valid int from U(https://www.memset.com/apidocs/methods_dns.html#dns.zone_record_create).
        attribute :ttl
        validates :ttl, inclusion: {:in=>[0, 300, 600, 900, 1800, 3600, 7200, 10800, 21600, 43200, 86400], :message=>"%{value} needs to be 0, 300, 600, 900, 1800, 3600, 7200, 10800, 21600, 43200, 86400"}, allow_nil: true

        # @return [String] The name of the zone to which to add the record to.
        attribute :zone
        validates :zone, presence: true, type: String
      end
    end
  end
end
