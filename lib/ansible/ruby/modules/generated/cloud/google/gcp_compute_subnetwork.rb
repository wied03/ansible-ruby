# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # A VPC network is a virtual version of the traditional physical networks that exist within and between physical data centers. A VPC network provides connectivity for your Compute Engine virtual machine (VM) instances, Container Engine containers, App Engine Flex services, and other network-related resources.
      # Each GCP project contains one or more VPC networks. Each VPC network is a global entity spanning all GCP regions. This global VPC network allows VM instances and other resources to communicate with each other via internal, private IP addresses.
      # Each VPC network is subdivided into subnets, and each subnet is contained within a single region. You can have more than one subnet in a region for a given VPC network. Each subnet has a contiguous private RFC1918 IP space. You create instances, containers, and the like in these subnets.
      # When you create an instance, you must create it in a subnet, and the instance draws its internal IP address from that subnet.
      # Virtual machine (VM) instances in a VPC network can communicate with instances in all other subnets of the same VPC network, regardless of region, using their RFC1918 private IP addresses. You can isolate portions of the network, even entire subnets, using firewall rules.
      class Gcp_compute_subnetwork < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
        attribute :description

        # @return [String] The range of internal addresses that are owned by this subnetwork.,Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported.
        attribute :ip_cidr_range
        validates :ip_cidr_range, presence: true, type: String

        # @return [String] The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The network this subnet belongs to.,Only networks that are in the distributed mode can have subnetworks.
        attribute :network
        validates :network, presence: true, type: String

        # @return [Symbol, nil] Whether the VMs in this subnet can access Google services without assigned external IP addresses.
        attribute :private_ip_google_access
        validates :private_ip_google_access, type: Symbol

        # @return [String] URL of the GCP region for this subnetwork.
        attribute :region
        validates :region, presence: true, type: String
      end
    end
  end
end
