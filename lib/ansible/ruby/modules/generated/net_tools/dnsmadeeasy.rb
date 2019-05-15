# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages DNS records via the v2 REST API of the DNS Made Easy service.  It handles records only; there is no manipulation of domains or monitor/account support yet. See: U(https://www.dnsmadeeasy.com/integration/restapi/)

      class Dnsmadeeasy < Base
        # @return [String] Account API Key.
        attribute :account_key
        validates :account_key, presence: true, type: String

        # @return [String] Account Secret Key.
        attribute :account_secret
        validates :account_secret, presence: true, type: String

        # @return [String] Domain to work with. Can be the domain name (e.g. "mydomain.com") or the numeric ID of the domain in DNS Made Easy (e.g. "839989") for faster resolution
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [String, nil] Decides if the sandbox API should be used. Otherwise (default) the production API of DNS Made Easy is used.
        attribute :sandbox
        validates :sandbox, type: String

        # @return [String, nil] Record name to get/create/delete/update. If record_name is not specified; all records for the domain will be returned in "result" regardless of the state argument.
        attribute :record_name
        validates :record_name, type: String

        # @return [:A, :AAAA, :CNAME, :ANAME, :HTTPRED, :MX, :NS, :PTR, :SRV, :TXT, nil] Record type.
        attribute :record_type
        validates :record_type, inclusion: {:in=>[:A, :AAAA, :CNAME, :ANAME, :HTTPRED, :MX, :NS, :PTR, :SRV, :TXT], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :ANAME, :HTTPRED, :MX, :NS, :PTR, :SRV, :TXT"}, allow_nil: true

        # @return [String, nil] Record value. HTTPRED: <redirection URL>, MX: <priority> <target name>, NS: <name server>, PTR: <target name>, SRV: <priority> <weight> <port> <target name>, TXT: <text value>"\r\n,If record_value is not specified; no changes will be made and the record will be returned in 'result' (in other words, this module can be used to fetch a record's current id, type, and ttl)\r\n
        attribute :record_value
        validates :record_value, type: String

        # @return [Integer, nil] record's "Time to live".  Number of seconds the record remains cached in DNS servers.
        attribute :record_ttl
        validates :record_ttl, type: Integer

        # @return [:present, :absent] whether the record should exist or not
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String

        # @return [String, nil] If C(yes), add or change the monitor.  This is applicable only for A records.
        attribute :monitor
        validates :monitor, type: String

        # @return [String] Description used by the monitor.
        attribute :systemDescription
        validates :systemDescription, presence: true, type: String

        # @return [Integer] Number of emails sent to the contact list by the monitor.
        attribute :maxEmails
        validates :maxEmails, presence: true, type: Integer

        # @return [:TCP, :UDP, :HTTP, :DNS, :SMTP, :HTTPS] Protocol used by the monitor.
        attribute :protocol
        validates :protocol, presence: true, inclusion: {:in=>[:TCP, :UDP, :HTTP, :DNS, :SMTP, :HTTPS], :message=>"%{value} needs to be :TCP, :UDP, :HTTP, :DNS, :SMTP, :HTTPS"}

        # @return [Integer] Port used by the monitor.
        attribute :port
        validates :port, presence: true, type: Integer

        # @return [:Low, :Medium, :High] Number of checks the monitor performs before a failover occurs where Low = 8, Medium = 5,and High = 3.
        attribute :sensitivity
        validates :sensitivity, presence: true, inclusion: {:in=>[:Low, :Medium, :High], :message=>"%{value} needs to be :Low, :Medium, :High"}

        # @return [String] Name or id of the contact list that the monitor will notify.,The default C('') means the Account Owner.
        attribute :contactList
        validates :contactList, presence: true, type: String

        # @return [String, nil] The fully qualified domain name used by the monitor.
        attribute :httpFqdn
        validates :httpFqdn, type: String

        # @return [String, nil] The file at the Fqdn that the monitor queries for HTTP or HTTPS.
        attribute :httpFile
        validates :httpFile, type: String

        # @return [String, nil] The string in the httpFile that the monitor queries for HTTP or HTTPS.
        attribute :httpQueryString
        validates :httpQueryString, type: String

        # @return [String, nil] If C(yes), add or change the failover.  This is applicable only for A records.
        attribute :failover
        validates :failover, type: String

        # @return [String, nil] If true, fallback to the primary IP address is manual after a failover.,If false, fallback to the primary IP address is automatic after a failover.
        attribute :autoFailover
        validates :autoFailover, type: String

        # @return [String, nil] Primary IP address for the failover.,Required if adding or changing the monitor or failover.
        attribute :ip1
        validates :ip1, type: String

        # @return [String, nil] Secondary IP address for the failover.,Required if adding or changing the failover.
        attribute :ip2
        validates :ip2, type: String

        # @return [String, nil] Tertiary IP address for the failover.
        attribute :ip3
        validates :ip3, type: String

        # @return [String, nil] Quaternary IP address for the failover.
        attribute :ip4
        validates :ip4, type: String

        # @return [String, nil] Quinary IP address for the failover.
        attribute :ip5
        validates :ip5, type: String
      end
    end
  end
end
