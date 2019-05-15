# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove DNS records.
      class Vultr_dns_record < Base
        # @return [String, nil] The record name (subrecord).
        attribute :name
        validates :name, type: String

        # @return [String] The domain the record is related to.
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [:A, :AAAA, :CNAME, :MX, :SRV, :CAA, :TXT, :NS, :SSHFP, nil] Type of the record.
        attribute :record_type
        validates :record_type, inclusion: {:in=>[:A, :AAAA, :CNAME, :MX, :SRV, :CAA, :TXT, :NS, :SSHFP], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :MX, :SRV, :CAA, :TXT, :NS, :SSHFP"}, allow_nil: true

        # @return [String, nil] Data of the record.,Required if C(state=present) or C(multiple=yes).
        attribute :data
        validates :data, type: String

        # @return [Integer, nil] TTL of the record.
        attribute :ttl
        validates :ttl, type: Integer

        # @return [Boolean, nil] Whether to use more than one record with similar C(name) including no name and C(record_type).,Only allowed for a few record types, e.g. C(record_type=A), C(record_type=NS) or C(record_type=MX).,C(data) will not be updated, instead it is used as a key to find existing records.
        attribute :multiple
        validates :multiple, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Priority of the record.
        attribute :priority
        validates :priority, type: Integer

        # @return [:present, :absent, nil] State of the DNS record.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
