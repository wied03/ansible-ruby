# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages DNS records via the Netcup API, see the docs U(https://ccp.netcup.net/run/webservice/servers/endpoint.php)
      class Netcup_dns < Base
        # @return [String] API key for authentification, must be obtained via the netcup CCP (U(https://ccp.netcup.net))
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] API password for authentification, must be obtained via the netcup CCP (https://ccp.netcup.net)
        attribute :api_password
        validates :api_password, presence: true, type: String

        # @return [String] Netcup customer id
        attribute :customer_id
        validates :customer_id, presence: true, type: String

        # @return [String] Domainname the records should be added / removed
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [String, nil] Record to add or delete, supports wildcard (*). Default is C(@) (e.g. the zone name)
        attribute :record
        validates :record, type: String

        # @return [:A, :AAAA, :MX, :CNAME, :CAA, :SRV, :TXT, :TLSA, :NS, :DS] Record type
        attribute :type
        validates :type, presence: true, expression_inclusion: {:in=>[:A, :AAAA, :MX, :CNAME, :CAA, :SRV, :TXT, :TLSA, :NS, :DS], :message=>"%{value} needs to be :A, :AAAA, :MX, :CNAME, :CAA, :SRV, :TXT, :TLSA, :NS, :DS"}

        # @return [String] Record value
        attribute :value
        validates :value, presence: true, type: String

        # @return [Symbol, nil] Whether the record should be the only one for that record type and record name. Only use with C(state=present),This will delete all other records with the same record name and type.
        attribute :solo
        validates :solo, type: Symbol

        # @return [Object, nil] Record priority. Required for C(type=MX)
        attribute :priority

        # @return [:present, :absent, nil] Whether the record should exist or not
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
