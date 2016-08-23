# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_dns_record < Base
        # @return [Object] Brief description of the domain. Maximum length of 160 characters
        attribute :comment

        # @return [Object] IP address for A/AAAA record, FQDN for CNAME/MX/NS, or text data for SRV/TXT
        attribute :data
        validates :data, presence: true

        # @return [Object] Domain name to create the record in. This is an invalid option when type=PTR
        attribute :domain

        # @return [Object] Load Balancer ID to create a PTR record for. Only used with type=PTR
        attribute :loadbalancer

        # @return [String] FQDN record name to create
        attribute :name
        validates :name, presence: true, type: String

        # @return [TrueClass] Add new records if data doesn't match, instead of updating existing record with matching name. If there are already multiple records with matching name and overwrite=true, this module will fail.
        attribute :overwrite
        validates :overwrite, type: TrueClass

        # @return [Object] Required for MX and SRV records, but forbidden for other record types. If specified, must be an integer from 0 to 65535.
        attribute :priority

        # @return [Object] Server ID to create a PTR record for. Only used with type=PTR
        attribute :server

        # @return [String] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] Time to live of record in seconds
        attribute :ttl
        validates :ttl, type: Fixnum

        # @return [Object] DNS record type
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT, :PTR], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT, :PTR"}
      end
    end
  end
end
