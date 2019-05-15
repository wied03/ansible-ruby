# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # A single DNS record that exists on a domain name (i.e. in a managed zone).
      # This record defines the information about the domain and where the domain / subdomains direct to.
      # The record will include the domain/subdomain name, a type (i.e. A, AAA, CAA, MX, CNAME, NS, etc) .
      class Gcp_dns_resource_record_set < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] For example, U(www.example.com.)
        attribute :name
        validates :name, presence: true, type: String

        # @return [:A, :AAAA, :CAA, :CNAME, :MX, :NAPTR, :NS, :PTR, :SOA, :SPF, :SRV, :TXT] One of valid DNS resource types.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:A, :AAAA, :CAA, :CNAME, :MX, :NAPTR, :NS, :PTR, :SOA, :SPF, :SRV, :TXT], :message=>"%{value} needs to be :A, :AAAA, :CAA, :CNAME, :MX, :NAPTR, :NS, :PTR, :SOA, :SPF, :SRV, :TXT"}

        # @return [Integer, nil] Number of seconds that this ResourceRecordSet can be cached by resolvers.
        attribute :ttl
        validates :ttl, type: Integer

        # @return [Array<String>, String, nil] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) .
        attribute :target
        validates :target, type: TypeGeneric.new(String)

        # @return [String] Identifies the managed zone addressed by this request.,Can be the managed zone name or id.
        attribute :managed_zone
        validates :managed_zone, presence: true, type: String
      end
    end
  end
end
