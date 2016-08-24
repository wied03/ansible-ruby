# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Dnsmadeeasy < Base
        # @return [String] Accout API Key.
        attribute :account_key
        validates :account_key, presence: true, type: String

        # @return [String] Accout Secret Key.
        attribute :account_secret
        validates :account_secret, presence: true, type: String

        # @return [String] Domain to work with. Can be the domain name (e.g. "mydomain.com") or the numeric ID of the domain in DNS Made Easy (e.g. "839989") for faster resolution.
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [String, nil] Record name to get/create/delete/update. If record_name is not specified; all records for the domain will be returned in "result" regardless of the state argument.
        attribute :record_name
        validates :record_name, type: String

        # @return [:A, :AAAA, :CNAME, :HTTPRED, :MX, :NS, :PTR, :SRV, :TXT, nil] Record type.
        attribute :record_type
        validates :record_type, inclusion: {:in=>[:A, :AAAA, :CNAME, :HTTPRED, :MX, :NS, :PTR, :SRV, :TXT], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :HTTPRED, :MX, :NS, :PTR, :SRV, :TXT"}, allow_nil: true

        # @return [String, nil] Record value. HTTPRED: <redirection URL>, MX: <priority> <target name>, NS: <name server>, PTR: <target name>, SRV: <priority> <weight> <port> <target name>, TXT: <text value>,If record_value is not specified; no changes will be made and the record will be returned in 'result' (in other words, this module can be used to fetch a record's current id, type, and ttl)
        attribute :record_value
        validates :record_value, type: String

        # @return [Integer, nil] record's "Time to live".  Number of seconds the record remains cached in DNS servers.
        attribute :record_ttl
        validates :record_ttl, type: Integer

        # @return [:present, :absent] whether the record should exist or not
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
