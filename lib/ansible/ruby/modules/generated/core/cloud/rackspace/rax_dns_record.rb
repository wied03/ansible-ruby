# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_dns_record < Base
        # @return [Object, nil] Brief description of the domain. Maximum length of 160 characters
        attribute :comment

        # @return [Object] IP address for A/AAAA record, FQDN for CNAME/MX/NS, or text data for SRV/TXT
        attribute :data
        validates :data, presence: true

        # @return [Object, nil] Domain name to create the record in. This is an invalid option when type=PTR
        attribute :domain

        # @return [Object, nil] Load Balancer ID to create a PTR record for. Only used with type=PTR
        attribute :loadbalancer

        # @return [String] FQDN record name to create
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] Add new records if data doesn't match, instead of updating existing record with matching name. If there are already multiple records with matching name and overwrite=true, this module will fail.
        attribute :overwrite
        validates :overwrite, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Required for MX and SRV records, but forbidden for other record types. If specified, must be an integer from 0 to 65535.
        attribute :priority

        # @return [Object, nil] Server ID to create a PTR record for. Only used with type=PTR
        attribute :server

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] Time to live of record in seconds
        attribute :ttl
        validates :ttl, type: Integer

        # @return [:A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT, :PTR] DNS record type
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT, :PTR], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT, :PTR"}
      end
    end
  end
end
