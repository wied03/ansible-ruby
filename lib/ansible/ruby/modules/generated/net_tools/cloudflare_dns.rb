# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages dns records via the Cloudflare API, see the docs: U(https://api.cloudflare.com/)
      class Cloudflare_dns < Base
        # @return [String] Account API token. You can obtain your API key from the bottom of the Cloudflare 'My Account' page, found here: U(https://dash.cloudflare.com/)\r\n
        attribute :account_api_token
        validates :account_api_token, presence: true, type: String

        # @return [String] Account email.
        attribute :account_email
        validates :account_email, presence: true, type: String

        # @return [Integer, nil] Algorithm number. Required for C(type=DS) and C(type=SSHFP) when C(state=present).
        attribute :algorithm
        validates :algorithm, type: Integer

        # @return [0, 1, 2, 3, nil] Certificate usage number. Required for C(type=TLSA) when C(state=present).
        attribute :cert_usage
        validates :cert_usage, expression_inclusion: {:in=>[0, 1, 2, 3], :message=>"%{value} needs to be 0, 1, 2, 3"}, allow_nil: true

        # @return [1, 2, nil] Hash type number. Required for C(type=DS), C(type=SSHFP) and C(type=TLSA) when C(state=present).
        attribute :hash_type
        validates :hash_type, expression_inclusion: {:in=>[1, 2], :message=>"%{value} needs to be 1, 2"}, allow_nil: true

        # @return [Integer, nil] DNSSEC key tag. Needed for C(type=DS) when C(state=present).
        attribute :key_tag
        validates :key_tag, type: Integer

        # @return [Integer, nil] Service port. Required for C(type=SRV) and C(type=TLSA).
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] Record priority. Required for C(type=MX) and C(type=SRV)
        attribute :priority
        validates :priority, type: String

        # @return [String, nil] Service protocol. Required for C(type=SRV) and C(type=TLSA).,Common values are tcp and udp.,Before Ansible 2.6 only tcp and udp were available.
        attribute :proto
        validates :proto, type: String

        # @return [:yes, :no, nil] Proxy through cloudflare network or just use DNS
        attribute :proxied
        validates :proxied, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Record to add. Required if C(state=present). Default is C(@) (e.g. the zone name)
        attribute :record
        validates :record, type: String

        # @return [0, 1, nil] Selector number. Required for C(type=TLSA) when C(state=present).
        attribute :selector
        validates :selector, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [String, nil] Record service. Required for C(type=SRV)
        attribute :service
        validates :service, type: String

        # @return [Boolean, nil] Whether the record should be the only one for that record type and record name. Only use with C(state=present),This will delete all other records with the same record name and type.
        attribute :solo
        validates :solo, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Whether the record(s) should exist or not
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] Timeout for Cloudflare API calls
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] The TTL to give the new record. Must be between 120 and 2,147,483,647 seconds, or 1 for automatic.
        attribute :ttl
        validates :ttl, type: String

        # @return [:A, :AAAA, :CNAME, :TXT, :SRV, :MX, :NS, :DS, :SPF, :SSHFP, :TLSA, nil] The type of DNS record to create. Required if C(state=present),C(type=DS), C(type=SSHFP) and C(type=TLSA) added in Ansible 2.7.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:A, :AAAA, :CNAME, :TXT, :SRV, :MX, :NS, :DS, :SPF, :SSHFP, :TLSA], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :TXT, :SRV, :MX, :NS, :DS, :SPF, :SSHFP, :TLSA"}, allow_nil: true

        # @return [String, nil] The record value. Required for C(state=present)
        attribute :value
        validates :value, type: String

        # @return [String, nil] Service weight. Required for C(type=SRV)
        attribute :weight
        validates :weight, type: String

        # @return [String] The name of the Zone to work with (e.g. "example.com"). The Zone must already exist.
        attribute :zone
        validates :zone, presence: true, type: String
      end
    end
  end
end
