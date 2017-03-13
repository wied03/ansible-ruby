# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # allows you to create new instances, either from scratch or an image, in addition to deleting or stopping instances on the oVirt/RHEV platform
      class Ovirt < Base
        # @return [Object] the user to authenticate with
        attribute :user
        validates :user, presence: true

        # @return [Object] the url of the oVirt instance
        attribute :url
        validates :url, presence: true

        # @return [Object] the name of the instance to use
        attribute :instance_name
        validates :instance_name, presence: true

        # @return [Object] password of the user to authenticate with
        attribute :password
        validates :password, presence: true

        # @return [Object, nil] template to use for the instance
        attribute :image

        # @return [:new, :template, nil] whether you want to deploy an image or create an instance from scratch.
        attribute :resource_type
        validates :resource_type, inclusion: {:in=>[:new, :template], :message=>"%{value} needs to be :new, :template"}, allow_nil: true

        # @return [Object, nil] deploy the image to this oVirt cluster
        attribute :zone

        # @return [Object, nil] size of the instance's disk in GB
        attribute :instance_disksize

        # @return [Integer, nil] the instance's number of cpu's
        attribute :instance_cpus
        validates :instance_cpus, type: Integer

        # @return [Object, nil] name of the network interface in oVirt/RHEV
        attribute :instance_nic

        # @return [String, nil] the logical network the machine should belong to
        attribute :instance_network
        validates :instance_network, type: String

        # @return [Object, nil] the instance's amount of memory in MB
        attribute :instance_mem

        # @return [:server, :desktop, nil] define if the instance is a server or desktop
        attribute :instance_type
        validates :instance_type, inclusion: {:in=>[:server, :desktop], :message=>"%{value} needs to be :server, :desktop"}, allow_nil: true

        # @return [:thin, :preallocated, nil] define if disk is thin or preallocated
        attribute :disk_alloc
        validates :disk_alloc, inclusion: {:in=>[:thin, :preallocated], :message=>"%{value} needs to be :thin, :preallocated"}, allow_nil: true

        # @return [:virtio, :ide, nil] interface type of the disk
        attribute :disk_int
        validates :disk_int, inclusion: {:in=>[:virtio, :ide], :message=>"%{value} needs to be :virtio, :ide"}, allow_nil: true

        # @return [Object, nil] type of Operating System
        attribute :instance_os

        # @return [Integer, nil] define the instance's number of cores
        attribute :instance_cores
        validates :instance_cores, type: Integer

        # @return [Object, nil] the Storage Domain where you want to create the instance's disk on.
        attribute :sdomain

        # @return [Object, nil] the oVirt/RHEV datacenter where you want to deploy to
        attribute :region

        # @return [Object, nil] define the instance's Primary DNS server
        attribute :instance_dns

        # @return [Object, nil] define the instance's Domain
        attribute :instance_domain

        # @return [Object, nil] define the instance's Hostname
        attribute :instance_hostname

        # @return [Object, nil] define the instance's IP
        attribute :instance_ip

        # @return [Object, nil] define the instance's Netmask
        attribute :instance_netmask

        # @return [Object, nil] define the instance's Root password
        attribute :instance_rootpw

        # @return [Object, nil] define the instance's Authorized key
        attribute :instance_key

        # @return [:present, :absent, :shutdown, :started, :restarted, nil] create, terminate or remove instances
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :shutdown, :started, :restarted], :message=>"%{value} needs to be :present, :absent, :shutdown, :started, :restarted"}, allow_nil: true
      end
    end
  end
end
