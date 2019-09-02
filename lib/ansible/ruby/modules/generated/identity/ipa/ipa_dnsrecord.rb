# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete an IPA DNS Record using IPA API.
      class Ipa_dnsrecord < Base
        # @return [String] The DNS zone name to which DNS record needs to be managed.
        attribute :zone_name
        validates :zone_name, presence: true, type: String

        # @return [String, Integer] The DNS record name to manage.
        attribute :record_name
        validates :record_name, presence: true, type: MultipleTypes.new(String, Integer)

        # @return [:A, :AAAA, :A6, :CNAME, :DNAME, :PTR, :TXT, nil] The type of DNS record name.,Currently, 'A', 'AAAA', 'A6', 'CNAME', 'DNAME', 'PTR' and 'TXT' are supported.,'A6', 'CNAME', 'DNAME' and 'TXT' are added in version 2.5.
        attribute :record_type
        validates :record_type, expression_inclusion: {:in=>[:A, :AAAA, :A6, :CNAME, :DNAME, :PTR, :TXT], :message=>"%{value} needs to be :A, :AAAA, :A6, :CNAME, :DNAME, :PTR, :TXT"}, allow_nil: true

        # @return [String] Manage DNS record name with this value.,In the case of 'A' or 'AAAA' record types, this will be the IP address.,In the case of 'A6' record type, this will be the A6 Record data.,In the case of 'CNAME' record type, this will be the hostname.,In the case of 'DNAME' record type, this will be the DNAME target.,In the case of 'PTR' record type, this will be the hostname.,In the case of 'TXT' record type, this will be a text.
        attribute :record_value
        validates :record_value, presence: true, type: String

        # @return [Integer, nil] Set the TTL for the record.,Applies only when adding a new or changing the value of record_value.
        attribute :record_ttl
        validates :record_ttl, type: Integer

        # @return [:present, :absent, nil] State to ensure
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
