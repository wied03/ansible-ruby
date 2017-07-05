# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages dns records via the Cloudflare API, see the docs: U(https://api.cloudflare.com/)
      class Cloudflare_dns < Base
        # @return [String] Account API token. You can obtain your API key from the bottom of the Cloudflare 'My Account' page, found here: U(https://www.cloudflare.com/a/account)
        attribute :account_api_token
        validates :account_api_token, presence: true, type: String

        # @return [String] Account email.
        attribute :account_email
        validates :account_email, presence: true, type: String

        # @return [Integer, nil] Service port. Required for C(type=SRV)
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] Record priority. Required for C(type=MX) and C(type=SRV)
        attribute :priority
        validates :priority, type: String

        # @return [:tcp, :udp, nil] Service protocol. Required for C(type=SRV)
        attribute :proto
        validates :proto, inclusion: {:in=>[:tcp, :udp], :message=>"%{value} needs to be :tcp, :udp"}, allow_nil: true

        # @return [Boolean, nil] Proxy through cloudflare network or just use DNS
        attribute :proxied
        validates :proxied, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Record to add. Required if C(state=present). Default is C(@) (e.g. the zone name)
        attribute :record
        validates :record, type: String

        # @return [String, nil] Record service. Required for C(type=SRV)
        attribute :service
        validates :service, type: String

        # @return [Boolean, nil] Whether the record should be the only one for that record type and record name. Only use with C(state=present),This will delete all other records with the same record name and type.
        attribute :solo
        validates :solo, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Whether the record(s) should exist or not
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] Timeout for Cloudflare API calls
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] The TTL to give the new record. Must be between 120 and 2,147,483,647 seconds, or 1 for automatic.
        attribute :ttl
        validates :ttl, type: String

        # @return [:A, :AAAA, :CNAME, :TXT, :SRV, :MX, :NS, :SPF, nil] The type of DNS record to create. Required if C(state=present)
        attribute :type
        validates :type, inclusion: {:in=>[:A, :AAAA, :CNAME, :TXT, :SRV, :MX, :NS, :SPF], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :TXT, :SRV, :MX, :NS, :SPF"}, allow_nil: true

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
