# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates and deletes DNS records in Amazons Route53 service
      class Route53 < Base
        # @return [:present, :absent, :get, :create, :delete] Specifies the state of the resource record. As of Ansible 2.4, the I(command) option has been changed to I(state) as default and the choices 'present' and 'absent' have been added, but I(command) still works as well.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent, :get, :create, :delete], :message=>"%{value} needs to be :present, :absent, :get, :create, :delete"}

        # @return [String] The DNS zone to modify
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [String, nil] The Hosted Zone ID of the DNS zone to modify
        attribute :hosted_zone_id
        validates :hosted_zone_id, type: String

        # @return [String] The full DNS record to create or delete
        attribute :record
        validates :record, presence: true, type: String

        # @return [String, nil] The TTL to give the new record
        attribute :ttl
        validates :ttl, type: String

        # @return [:A, :CNAME, :MX, :AAAA, :TXT, :PTR, :SRV, :SPF, :CAA, :NS, :SOA] The type of DNS record to create
        attribute :type
        validates :type, presence: true, expression_inclusion: {:in=>[:A, :CNAME, :MX, :AAAA, :TXT, :PTR, :SRV, :SPF, :CAA, :NS, :SOA], :message=>"%{value} needs to be :A, :CNAME, :MX, :AAAA, :TXT, :PTR, :SRV, :SPF, :CAA, :NS, :SOA"}

        # @return [:yes, :no, nil] Indicates if this is an alias record.
        attribute :alias
        validates :alias, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The hosted zone identifier.
        attribute :alias_hosted_zone_id
        validates :alias_hosted_zone_id, type: String

        # @return [Symbol, nil] Whether or not to evaluate an alias target health. Useful for aliases to Elastic Load Balancers.
        attribute :alias_evaluate_target_health
        validates :alias_evaluate_target_health, type: Symbol

        # @return [Array<String>, String, nil] The new value when creating a DNS record.  YAML lists or multiple comma-spaced values are allowed for non-alias records.,When deleting a record all values for the record must be specified or Route53 will not delete it.
        attribute :value
        validates :value, type: TypeGeneric.new(String)

        # @return [Object, nil] Whether an existing record should be overwritten on create if values do not match
        attribute :overwrite

        # @return [Integer, nil] In the case that route53 is still servicing a prior request, this module will wait and try again after this many seconds. If you have many domain names, the default of 500 seconds may be too long.
        attribute :retry_interval
        validates :retry_interval, type: Integer

        # @return [:yes, :no, nil] If set to C(yes), the private zone matching the requested name within the domain will be used if there are both public and private zones. The default is to use the public zone.
        attribute :private_zone
        validates :private_zone, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Have to be specified for Weighted, latency-based and failover resource record sets only. An identifier that differentiates among multiple resource record sets that have the same combination of DNS name and type.
        attribute :identifier
        validates :identifier, type: String

        # @return [Integer, nil] Weighted resource record sets only. Among resource record sets that have the same combination of DNS name and type, a value that determines what portion of traffic for the current resource record set is routed to the associated location.
        attribute :weight
        validates :weight, type: Integer

        # @return [Object, nil] Latency-based resource record sets only Among resource record sets that have the same combination of DNS name and type, a value that determines which region this should be associated with for the latency-based routing
        attribute :region

        # @return [String, nil] Health check to associate with this record
        attribute :health_check
        validates :health_check, type: String

        # @return [Object, nil] Failover resource record sets only. Whether this is the primary or secondary resource record set. Allowed values are PRIMARY and SECONDARY
        attribute :failover

        # @return [Object, nil] When used in conjunction with private_zone: true, this will only modify records in the private hosted zone attached to this VPC.,This allows you to have multiple private hosted zones, all with the same name, attached to different VPCs.
        attribute :vpc_id

        # @return [:yes, :no, nil] Wait until the changes have been replicated to all Amazon Route 53 DNS servers.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] How long to wait for the changes to be replicated, in seconds.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
