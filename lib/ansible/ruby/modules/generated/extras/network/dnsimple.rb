# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Dnsimple < Base
        # @return [String, nil] Account email. If omitted, the env variables DNSIMPLE_EMAIL and DNSIMPLE_API_TOKEN will be looked for. If those aren't found, a C(.dnsimple) file will be looked for, see: U(https://github.com/mikemaccana/dnsimple-python#getting-started)
        attribute :account_email
        validates :account_email, type: String

        # @return [String, nil] Account API token. See I(account_email) for info.
        attribute :account_api_token
        validates :account_api_token, type: String

        # @return [String, nil] Domain to work with. Can be the domain name (e.g. "mydomain.com") or the numeric ID of the domain in DNSimple. If omitted, a list of domains will be returned.,If domain is present but the domain doesn't exist, it will be created.
        attribute :domain
        validates :domain, type: String

        # @return [String, nil] Record to add, if blank a record for the domain will be created, supports the wildcard (*)
        attribute :record
        validates :record, type: String

        # @return [String, nil] List of records to ensure they either exist or don't exist
        attribute :record_ids
        validates :record_ids, type: String

        # @return [:A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL, nil] The type of DNS record to create
        attribute :type
        validates :type, inclusion: {:in=>[:A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL], :message=>"%{value} needs to be :A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL"}, allow_nil: true

        # @return [String, nil] The TTL to give the new record
        attribute :ttl
        validates :ttl, type: String

        # @return [String, nil] Record value,Must be specified when trying to ensure a record exists
        attribute :value
        validates :value, type: String

        # @return [Object, nil] Record priority
        attribute :priority

        # @return [:present, :absent, nil] whether the record should exist or not
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Whether the record should be the only one for that record type and record name. Only use with state=present on a record
        attribute :solo
      end
    end
  end
end
