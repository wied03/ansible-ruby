# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An Ansible module to Create, Delete, Start and Stop servers in CenturyLink Cloud.
      class Clc_server < Base
        # @return [Object, nil] The list of additional disks for the server
        attribute :additional_disks

        # @return [:yes, :no, nil] Whether to add a public ip to the server
        attribute :add_public_ip
        validates :add_public_ip, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The account alias to provision the servers under.
        attribute :alias

        # @return [Object, nil] The anti-affinity policy to assign to the server. This is mutually exclusive with 'anti_affinity_policy_name'.
        attribute :anti_affinity_policy_id

        # @return [Object, nil] The anti-affinity policy to assign to the server. This is mutually exclusive with 'anti_affinity_policy_id'.
        attribute :anti_affinity_policy_name

        # @return [Object, nil] The alert policy to assign to the server. This is mutually exclusive with 'alert_policy_name'.
        attribute :alert_policy_id

        # @return [Object, nil] The alert policy to assign to the server. This is mutually exclusive with 'alert_policy_id'.
        attribute :alert_policy_name

        # @return [Integer, nil] The number of servers to build (mutually exclusive with exact_count)
        attribute :count
        validates :count, type: Integer

        # @return [String, nil] Required when exact_count is specified.  The Server Group use to determine how many severs to deploy.
        attribute :count_group
        validates :count_group, type: String

        # @return [Integer, nil] How many CPUs to provision on the server
        attribute :cpu
        validates :cpu, type: Integer

        # @return [Object, nil] The autoscale policy to assign to the server.
        attribute :cpu_autoscale_policy_id

        # @return [Object, nil] The list of custom fields to set on the server.
        attribute :custom_fields

        # @return [Object, nil] The description to set for the server.
        attribute :description

        # @return [Integer, nil] Run in idempotent mode.  Will insure that this exact number of servers are running in the provided group, creating and deleting them to reach that count.  Requires count_group to be set.
        attribute :exact_count
        validates :exact_count, type: Integer

        # @return [String, nil] The Server Group to create servers under.
        attribute :group
        validates :group, type: String

        # @return [Object, nil] The IP Address for the server. One is assigned if not provided.
        attribute :ip_address

        # @return [Object, nil] The Datacenter to create servers in.
        attribute :location

        # @return [:yes, :no, nil] Whether to create the server as 'Managed' or not.
        attribute :managed_os
        validates :managed_os, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Memory in GB.
        attribute :memory
        validates :memory, type: Integer

        # @return [String, nil] A 1 to 6 character identifier to use for the server. This is required when state is 'present'
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The network UUID on which to create servers.
        attribute :network_id

        # @return [Object, nil] The list of blue print packages to run on the server after its created.
        attribute :packages

        # @return [Object, nil] Password for the administrator / root user
        attribute :password

        # @return [Object, nil] Primary DNS used by the server.
        attribute :primary_dns

        # @return [:TCP, :UDP, :ICMP, nil] The protocol to use for the public ip if add_public_ip is set to True.
        attribute :public_ip_protocol
        validates :public_ip_protocol, expression_inclusion: {:in=>[:TCP, :UDP, :ICMP], :message=>"%{value} needs to be :TCP, :UDP, :ICMP"}, allow_nil: true

        # @return [Object, nil] A list of ports to allow on the firewall to the servers public ip, if add_public_ip is set to True.
        attribute :public_ip_ports

        # @return [Object, nil] Secondary DNS used by the server.
        attribute :secondary_dns

        # @return [Object, nil] Required for started, stopped, and absent states. A list of server Ids to insure are started, stopped, or absent.
        attribute :server_ids

        # @return [Object, nil] The password for the source server if a clone is specified.
        attribute :source_server_password

        # @return [:present, :absent, :started, :stopped, nil] The state to insure that the provided resources are in.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :started, :stopped], :message=>"%{value} needs to be :present, :absent, :started, :stopped"}, allow_nil: true

        # @return [:standard, :hyperscale, nil] The type of storage to attach to the server.
        attribute :storage_type
        validates :storage_type, expression_inclusion: {:in=>[:standard, :hyperscale], :message=>"%{value} needs to be :standard, :hyperscale"}, allow_nil: true

        # @return [String, nil] The template to use for server creation.  Will search for a template if a partial string is provided. This is required when state is 'present'
        attribute :template
        validates :template, type: String

        # @return [Object, nil] The time to live for the server in seconds.  The server will be deleted when this time expires.
        attribute :ttl

        # @return [:standard, :hyperscale, :bareMetal, nil] The type of server to create.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:standard, :hyperscale, :bareMetal], :message=>"%{value} needs to be :standard, :hyperscale, :bareMetal"}, allow_nil: true

        # @return [Object, nil] Only required for bare metal servers. Specifies the identifier for the specific configuration type of bare metal server to deploy.
        attribute :configuration_id

        # @return [:redHat6_64Bit, :centOS6_64Bit, :windows2012R2Standard_64Bit, :ubuntu14_64Bit, nil] Only required for bare metal servers. Specifies the OS to provision with the bare metal server.
        attribute :os_type
        validates :os_type, expression_inclusion: {:in=>[:redHat6_64Bit, :centOS6_64Bit, :windows2012R2Standard_64Bit, :ubuntu14_64Bit], :message=>"%{value} needs to be :redHat6_64Bit, :centOS6_64Bit, :windows2012R2Standard_64Bit, :ubuntu14_64Bit"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to wait for the provisioning tasks to finish before returning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
