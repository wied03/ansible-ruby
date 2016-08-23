# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Clc_server < Base
        # @return [Array] The list of additional disks for the server
        attribute :additional_disks
        validates :additional_disks, type: Array

        # @return [Boolean, nil] Whether to add a public ip to the server
        attribute :add_public_ip
        validates :add_public_ip, inclusion: {:in=>[false, true], :message=>"%{value} needs to be false, true"}, allow_nil: true

        # @return [String] The account alias to provision the servers under.
        attribute :alias
        validates :alias, type: String

        # @return [String] The anti-affinity policy to assign to the server. This is mutually exclusive with 'anti_affinity_policy_name'.
        attribute :anti_affinity_policy_id
        validates :anti_affinity_policy_id, type: String

        # @return [String] The anti-affinity policy to assign to the server. This is mutually exclusive with 'anti_affinity_policy_id'.
        attribute :anti_affinity_policy_name
        validates :anti_affinity_policy_name, type: String

        # @return [String] The alert policy to assign to the server. This is mutually exclusive with 'alert_policy_name'.
        attribute :alert_policy_id
        validates :alert_policy_id, type: String

        # @return [String] The alert policy to assign to the server. This is mutually exclusive with 'alert_policy_id'.
        attribute :alert_policy_name
        validates :alert_policy_name, type: String

        # @return [Fixnum] The number of servers to build (mutually exclusive with exact_count)
        attribute :count
        validates :count, type: Fixnum

        # @return [String] Required when exact_count is specified.  The Server Group use to determine how many severs to deploy.
        attribute :count_group
        validates :count_group, type: String

        # @return [Fixnum] How many CPUs to provision on the server
        attribute :cpu
        validates :cpu, type: Fixnum

        # @return [String] The autoscale policy to assign to the server.
        attribute :cpu_autoscale_policy_id
        validates :cpu_autoscale_policy_id, type: String

        # @return [Array] The list of custom fields to set on the server.
        attribute :custom_fields
        validates :custom_fields, type: Array

        # @return [String] The description to set for the server.
        attribute :description
        validates :description, type: String

        # @return [String] Run in idempotent mode.  Will insure that this exact number of servers are running in the provided group, creating and deleting them to reach that count.  Requires count_group to be set.
        attribute :exact_count
        validates :exact_count, type: String

        # @return [String] The Server Group to create servers under.
        attribute :group
        validates :group, type: String

        # @return [String] The IP Address for the server. One is assigned if not provided.
        attribute :ip_address
        validates :ip_address, type: String

        # @return [String] The Datacenter to create servers in.
        attribute :location
        validates :location, type: String

        # @return [Boolean, nil] Whether to create the server as 'Managed' or not.
        attribute :managed_os
        validates :managed_os, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Fixnum] Memory in GB.
        attribute :memory
        validates :memory, type: Fixnum

        # @return [String] A 1 to 6 character identifier to use for the server. This is required when state is 'present'
        attribute :name
        validates :name, type: String

        # @return [String] The network UUID on which to create servers.
        attribute :network_id
        validates :network_id, type: String

        # @return [Array] The list of blue print packages to run on the server after its created.
        attribute :packages
        validates :packages, type: Array

        # @return [String] Password for the administrator / root user
        attribute :password
        validates :password, type: String

        # @return [String] Primary DNS used by the server.
        attribute :primary_dns
        validates :primary_dns, type: String

        # @return [:TCP, :UDP, :ICMP, nil] The protocol to use for the public ip if add_public_ip is set to True.
        attribute :public_ip_protocol
        validates :public_ip_protocol, inclusion: {:in=>[:TCP, :UDP, :ICMP], :message=>"%{value} needs to be :TCP, :UDP, :ICMP"}, allow_nil: true

        # @return [Array] A list of ports to allow on the firewall to the servers public ip, if add_public_ip is set to True.
        attribute :public_ip_ports
        validates :public_ip_ports, type: Array

        # @return [String] Secondary DNS used by the server.
        attribute :secondary_dns
        validates :secondary_dns, type: String

        # @return [Array] Required for started, stopped, and absent states. A list of server Ids to insure are started, stopped, or absent.
        attribute :server_ids
        validates :server_ids, type: Array

        # @return [String] The password for the source server if a clone is specified.
        attribute :source_server_password
        validates :source_server_password, type: String

        # @return [:present, :absent, :started, :stopped, nil] The state to insure that the provided resources are in.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :started, :stopped], :message=>"%{value} needs to be :present, :absent, :started, :stopped"}, allow_nil: true

        # @return [:standard, :hyperscale, nil] The type of storage to attach to the server.
        attribute :storage_type
        validates :storage_type, inclusion: {:in=>[:standard, :hyperscale], :message=>"%{value} needs to be :standard, :hyperscale"}, allow_nil: true

        # @return [String] The template to use for server creation.  Will search for a template if a partial string is provided. This is required when state is 'present'
        attribute :template
        validates :template, type: String

        # @return [String] The time to live for the server in seconds.  The server will be deleted when this time expires.
        attribute :ttl
        validates :ttl, type: String

        # @return [:standard, :hyperscale, :bareMetal, nil] The type of server to create.
        attribute :type
        validates :type, inclusion: {:in=>[:standard, :hyperscale, :bareMetal], :message=>"%{value} needs to be :standard, :hyperscale, :bareMetal"}, allow_nil: true

        # @return [String] Only required for bare metal servers. Specifies the identifier for the specific configuration type of bare metal server to deploy.
        attribute :configuration_id
        validates :configuration_id, type: String

        # @return [:redHat6_64Bit, :centOS6_64Bit, :windows2012R2Standard_64Bit, :ubuntu14_64Bit, nil] Only required for bare metal servers. Specifies the OS to provision with the bare metal server.
        attribute :os_type
        validates :os_type, inclusion: {:in=>[:redHat6_64Bit, :centOS6_64Bit, :windows2012R2Standard_64Bit, :ubuntu14_64Bit], :message=>"%{value} needs to be :redHat6_64Bit, :centOS6_64Bit, :windows2012R2Standard_64Bit, :ubuntu14_64Bit"}, allow_nil: true

        # @return [Boolean, nil] Whether to wait for the provisioning tasks to finish before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
