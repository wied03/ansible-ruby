# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OpenStack Quotas. Quotas can be created, updated or deleted using this module. A quota will be updated if matches an existing project and is present.
      class Os_quota < Base
        # @return [String] Name of the OpenStack Project to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] A value of present sets the quota and a value of absent resets the quota to system defaults.
        attribute :state
        validates :state, type: String

        # @return [String, nil] Maximum size of backups in GB's.
        attribute :backup_gigabytes
        validates :backup_gigabytes, type: String

        # @return [String, nil] Maximum number of backups allowed.
        attribute :backups
        validates :backups, type: String

        # @return [Integer, String, nil] Maximum number of CPU's per project.
        attribute :cores
        validates :cores, type: MultipleTypes.new(Integer, String)

        # @return [String, nil] Number of fixed IP's to allow.
        attribute :fixed_ips
        validates :fixed_ips, type: String

        # @return [String, nil] Number of floating IP's to allow in Compute.
        attribute :floating_ips
        validates :floating_ips, type: String

        # @return [String, nil] Number of floating IP's to allow in Network.
        attribute :floatingip
        validates :floatingip, type: String

        # @return [String, nil] Maximum volume storage allowed for project.
        attribute :gigabytes
        validates :gigabytes, type: String

        # @return [Object, nil] Maximum size in GB's of individual lvm volumes.
        attribute :gigabytes_lvm

        # @return [String, nil] Maximum file size in bytes.
        attribute :injected_file_size
        validates :injected_file_size, type: String

        # @return [String, nil] Number of injected files to allow.
        attribute :injected_files
        validates :injected_files, type: String

        # @return [String, nil] Maximum path size.
        attribute :injected_path_size
        validates :injected_path_size, type: String

        # @return [String, nil] Maximum number of instances allowed.
        attribute :instances
        validates :instances, type: String

        # @return [String, nil] Number of key pairs to allow.
        attribute :key_pairs
        validates :key_pairs, type: String

        # @return [Object, nil] Number of networks to allow.
        attribute :network

        # @return [String, nil] Maximum size in GB's of individual volumes.
        attribute :per_volume_gigabytes
        validates :per_volume_gigabytes, type: String

        # @return [String, nil] Number of Network ports to allow, this needs to be greater than the instances limit.
        attribute :port
        validates :port, type: String

        # @return [String, nil] Number of properties to allow.
        attribute :properties
        validates :properties, type: String

        # @return [String, nil] Maximum amount of ram in MB to allow.
        attribute :ram
        validates :ram, type: String

        # @return [Object, nil] Number of policies to allow.
        attribute :rbac_policy

        # @return [Object, nil] Number of routers to allow.
        attribute :router

        # @return [String, nil] Number of rules per security group to allow.
        attribute :security_group_rule
        validates :security_group_rule, type: String

        # @return [String, nil] Number of security groups to allow.
        attribute :security_group
        validates :security_group, type: String

        # @return [String, nil] Number of server group members to allow.
        attribute :server_group_members
        validates :server_group_members, type: String

        # @return [String, nil] Number of server groups to allow.
        attribute :server_groups
        validates :server_groups, type: String

        # @return [String, nil] Number of snapshots to allow.
        attribute :snapshots
        validates :snapshots, type: String

        # @return [Object, nil] Number of LVM snapshots to allow.
        attribute :snapshots_lvm

        # @return [Object, nil] Number of subnets to allow.
        attribute :subnet

        # @return [Object, nil] Number of subnet pools to allow.
        attribute :subnetpool

        # @return [Integer, String, nil] Number of volumes to allow.
        attribute :volumes
        validates :volumes, type: MultipleTypes.new(Integer, String)

        # @return [Object, nil] Number of LVM volumes to allow.
        attribute :volumes_lvm

        # @return [Object, nil] Ignored. Present for backwards compatability
        attribute :availability_zone
      end
    end
  end
end
