# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module only supports oVirt/RHEV version 3. A newer module M(ovirt_vms) supports oVirt/RHV version 4.
      # Allows you to create new instances, either from scratch or an image, in addition to deleting or stopping instances on the oVirt/RHEV platform.
      class Ovirt < Base
        # @return [String] The user to authenticate with.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] The url of the oVirt instance.
        attribute :url
        validates :url, presence: true, type: String

        # @return [String] The name of the instance to use.
        attribute :instance_name
        validates :instance_name, presence: true, type: String

        # @return [String] Password of the user to authenticate with.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] The template to use for the instance.
        attribute :image
        validates :image, type: String

        # @return [:new, :template, nil] Whether you want to deploy an image or create an instance from scratch.
        attribute :resource_type
        validates :resource_type, expression_inclusion: {:in=>[:new, :template], :message=>"%{value} needs to be :new, :template"}, allow_nil: true

        # @return [String, nil] Deploy the image to this oVirt cluster.
        attribute :zone
        validates :zone, type: String

        # @return [Integer, nil] Size of the instance's disk in GB.
        attribute :instance_disksize
        validates :instance_disksize, type: Integer

        # @return [Integer, nil] The instance's number of CPUs.
        attribute :instance_cpus
        validates :instance_cpus, type: Integer

        # @return [String, nil] The name of the network interface in oVirt/RHEV.
        attribute :instance_nic
        validates :instance_nic, type: String

        # @return [String, nil] The logical network the machine should belong to.
        attribute :instance_network
        validates :instance_network, type: String

        # @return [Integer, nil] The instance's amount of memory in MB.
        attribute :instance_mem
        validates :instance_mem, type: Integer

        # @return [:desktop, :server, :high_performance, nil] Define whether the instance is a server, desktop or high_performance.,I(high_performance) is supported since Ansible 2.5 and oVirt/RHV 4.2.
        attribute :instance_type
        validates :instance_type, expression_inclusion: {:in=>[:desktop, :server, :high_performance], :message=>"%{value} needs to be :desktop, :server, :high_performance"}, allow_nil: true

        # @return [:preallocated, :thin, nil] Define whether disk is thin or preallocated.
        attribute :disk_alloc
        validates :disk_alloc, expression_inclusion: {:in=>[:preallocated, :thin], :message=>"%{value} needs to be :preallocated, :thin"}, allow_nil: true

        # @return [:ide, :virtio, nil] Interface type of the disk.
        attribute :disk_int
        validates :disk_int, expression_inclusion: {:in=>[:ide, :virtio], :message=>"%{value} needs to be :ide, :virtio"}, allow_nil: true

        # @return [String, nil] Type of Operating System.
        attribute :instance_os
        validates :instance_os, type: String

        # @return [Integer, nil] Define the instance's number of cores.
        attribute :instance_cores
        validates :instance_cores, type: Integer

        # @return [String, nil] The Storage Domain where you want to create the instance's disk on.
        attribute :sdomain
        validates :sdomain, type: String

        # @return [String, nil] The oVirt/RHEV datacenter where you want to deploy to.
        attribute :region
        validates :region, type: String

        # @return [Object, nil] Define the instance's Primary DNS server.
        attribute :instance_dns

        # @return [Object, nil] Define the instance's Domain.
        attribute :instance_domain

        # @return [Object, nil] Define the instance's Hostname.
        attribute :instance_hostname

        # @return [Object, nil] Define the instance's IP.
        attribute :instance_ip

        # @return [Object, nil] Define the instance's Netmask.
        attribute :instance_netmask

        # @return [Object, nil] Define the instance's Root password.
        attribute :instance_rootpw

        # @return [Object, nil] Define the instance's Authorized key.
        attribute :instance_key

        # @return [:absent, :present, :restarted, :shutdown, :started, nil] Create, terminate or remove instances.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :restarted, :shutdown, :started], :message=>"%{value} needs to be :absent, :present, :restarted, :shutdown, :started"}, allow_nil: true
      end
    end
  end
end
