# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete records.
      class Exo_dns_record < Base
        # @return [String, nil] Name of the record.
        attribute :name
        validates :name, type: String

        # @return [String] Domain the record is related to.
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [:A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL, nil] Type of the record.
        attribute :record_type
        validates :record_type, inclusion: {:in=>[:A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL], :message=>"%{value} needs to be :A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL"}, allow_nil: true

        # @return [String, nil] Content of the record.,Required if C(state=present) or C(multiple=yes).
        attribute :content
        validates :content, type: String

        # @return [Integer, nil] TTL of the record in seconds.
        attribute :ttl
        validates :ttl, type: Integer

        # @return [Integer, nil] Priority of the record.
        attribute :prio
        validates :prio, type: Integer

        # @return [Boolean, nil] Whether there are more than one records with similar C(name) and C(record_type).,Only allowed for a few record types, e.g. C(record_type=A), C(record_type=NS) or C(record_type=MX).,C(content) will not be updated, instead it is used as a key to find existing records.
        attribute :multiple
        validates :multiple, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the record.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
