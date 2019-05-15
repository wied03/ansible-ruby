# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete Azure load balancers
      class Azure_rm_loadbalancer < Base
        # @return [String] Name of a resource group where the load balancer exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the load balancer.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the load balancer. Use C(present) to create/update a load balancer, or C(absent) to delete one.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location

        # @return [:Basic, :Standard, nil] The load balancer SKU.
        attribute :sku
        validates :sku, inclusion: {:in=>[:Basic, :Standard], :message=>"%{value} needs to be :Basic, :Standard"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] List of frontend IPs to be used
        attribute :frontend_ip_configurations
        validates :frontend_ip_configurations, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of backend address pools
        attribute :backend_address_pools
        validates :backend_address_pools, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of probe definitions used to check endpoint health.
        attribute :probes
        validates :probes, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer.,Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range.,Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound Nat rules.,Inbound NAT pools are referenced from virtual machine scale sets.,NICs that are associated with individual virtual machines cannot reference an inbound NAT pool.,They have to reference individual inbound NAT rules.
        attribute :inbound_nat_pools
        validates :inbound_nat_pools, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Object collection representing the load balancing rules Gets the provisioning.
        attribute :load_balancing_rules
        validates :load_balancing_rules, type: TypeGeneric.new(Hash)

        # @return [Object, nil] (deprecated) Name of an existing public IP address object to associate with the security group.,This option has been deprecated, and will be removed in 2.9. Use I(frontend_ip_configurations) instead.
        attribute :public_ip_address_name

        # @return [Object, nil] (deprecated) The port that the health probe will use.,This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.
        attribute :probe_port

        # @return [:Tcp, :Http, nil] (deprecated) The protocol to use for the health probe.,This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.
        attribute :probe_protocol
        validates :probe_protocol, inclusion: {:in=>[:Tcp, :Http], :message=>"%{value} needs to be :Tcp, :Http"}, allow_nil: true

        # @return [Integer, nil] (deprecated) Time (in seconds) between endpoint health probes.,This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.
        attribute :probe_interval
        validates :probe_interval, type: Integer

        # @return [Integer, nil] (deprecated) The amount of probe failures for the load balancer to make a health determination.,This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.
        attribute :probe_fail_count
        validates :probe_fail_count, type: Integer

        # @return [Object, nil] (deprecated) The URL that an HTTP probe will use (only relevant if probe_protocol is set to Http).,This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.
        attribute :probe_request_path

        # @return [:Tcp, :Udp, nil] (deprecated) The protocol (TCP or UDP) that the load balancer will use.,This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:Tcp, :Udp], :message=>"%{value} needs to be :Tcp, :Udp"}, allow_nil: true

        # @return [:Default, :SourceIP, :SourceIPProtocol, nil] (deprecated) The type of load distribution that the load balancer will employ.,This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.
        attribute :load_distribution
        validates :load_distribution, inclusion: {:in=>[:Default, :SourceIP, :SourceIPProtocol], :message=>"%{value} needs to be :Default, :SourceIP, :SourceIPProtocol"}, allow_nil: true

        # @return [Object, nil] (deprecated) Frontend port that will be exposed for the load balancer.,This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.
        attribute :frontend_port

        # @return [Object, nil] (deprecated) Backend port that will be exposed for the load balancer.,This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.
        attribute :backend_port

        # @return [Integer, nil] (deprecated) Timeout for TCP idle connection in minutes.,This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.
        attribute :idle_timeout
        validates :idle_timeout, type: Integer

        # @return [Object, nil] (deprecated) Start of the port range for a NAT pool.,This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.
        attribute :natpool_frontend_port_start

        # @return [Object, nil] (deprecated) End of the port range for a NAT pool.,This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.
        attribute :natpool_frontend_port_end

        # @return [Object, nil] (deprecated) Backend port used by the NAT pool.,This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.
        attribute :natpool_backend_port

        # @return [Object, nil] (deprecated) The protocol for the NAT pool.,This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.
        attribute :natpool_protocol
      end
    end
  end
end
