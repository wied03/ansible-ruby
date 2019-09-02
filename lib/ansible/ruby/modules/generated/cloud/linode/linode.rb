# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Linode Public Cloud instances and optionally wait for it to be 'running'.
      class Linode < Base
        # @return [:absent, :active, :deleted, :present, :restarted, :started, :stopped, nil] Indicate desired state of the resource
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :active, :deleted, :present, :restarted, :started, :stopped], :message=>"%{value} needs to be :absent, :active, :deleted, :present, :restarted, :started, :stopped"}, allow_nil: true

        # @return [String, nil] Linode API key
        attribute :api_key
        validates :api_key, type: String

        # @return [String] Name to give the instance (alphanumeric, dashes, underscore).,To keep sanity on the Linode Web Console, name is prepended with C(LinodeID_).
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Add the instance to a Display Group in Linode Manager.
        attribute :displaygroup
        validates :displaygroup, type: String

        # @return [Integer, nil] Unique ID of a linode server
        attribute :linode_id
        validates :linode_id, type: Integer

        # @return [Array<Hash>, Hash, nil] List of dictionaries for creating additional disks that are added to the Linode configuration settings.,Dictionary takes Size, Label, Type. Size is in MB.
        attribute :additional_disks
        validates :additional_disks, type: TypeGeneric.new(Hash)

        # @return [Symbol, nil] Set status of bandwidth in alerts.
        attribute :alert_bwin_enabled
        validates :alert_bwin_enabled, type: Symbol

        # @return [Integer, nil] Set threshold in MB of bandwidth in alerts.
        attribute :alert_bwin_threshold
        validates :alert_bwin_threshold, type: Integer

        # @return [Symbol, nil] Set status of bandwidth out alerts.
        attribute :alert_bwout_enabled
        validates :alert_bwout_enabled, type: Symbol

        # @return [Integer, nil] Set threshold in MB of bandwidth out alerts.
        attribute :alert_bwout_threshold
        validates :alert_bwout_threshold, type: Integer

        # @return [Symbol, nil] Set status of bandwidth quota alerts as percentage of network transfer quota.
        attribute :alert_bwquota_enabled
        validates :alert_bwquota_enabled, type: Symbol

        # @return [Integer, nil] Set threshold in MB of bandwidth quota alerts.
        attribute :alert_bwquota_threshold
        validates :alert_bwquota_threshold, type: Integer

        # @return [Symbol, nil] Set status of receiving CPU usage alerts.
        attribute :alert_cpu_enabled
        validates :alert_cpu_enabled, type: Symbol

        # @return [Integer, nil] Set percentage threshold for receiving CPU usage alerts. Each CPU core adds 100% to total.
        attribute :alert_cpu_threshold
        validates :alert_cpu_threshold, type: Integer

        # @return [Symbol, nil] Set status of receiving disk IO alerts.
        attribute :alert_diskio_enabled
        validates :alert_diskio_enabled, type: Symbol

        # @return [Integer, nil] Set threshold for average IO ops/sec over 2 hour period.
        attribute :alert_diskio_threshold
        validates :alert_diskio_threshold, type: Integer

        # @return [Integer, nil] Integer value for what day of the week to store weekly backups.
        attribute :backupweeklyday
        validates :backupweeklyday, type: Integer

        # @return [Integer, nil] plan to use for the instance (Linode plan)
        attribute :plan
        validates :plan, type: Integer

        # @return [1, 12, 24, nil] payment term to use for the instance (payment term in months)
        attribute :payment_term
        validates :payment_term, expression_inclusion: {:in=>[1, 12, 24], :message=>"%{value} needs to be 1, 12, 24"}, allow_nil: true

        # @return [String, nil] root password to apply to a new server (auto generated if missing)
        attribute :password
        validates :password, type: String

        # @return [:yes, :no, nil] Add private IPv4 address when Linode is created.
        attribute :private_ip
        validates :private_ip, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] SSH public key applied to root user
        attribute :ssh_pub_key
        validates :ssh_pub_key, type: String

        # @return [Integer, nil] swap size in MB
        attribute :swap
        validates :swap, type: Integer

        # @return [Integer, nil] distribution to use for the instance (Linode Distribution)
        attribute :distribution
        validates :distribution, type: Integer

        # @return [Integer, nil] datacenter to create an instance in (Linode Datacenter)
        attribute :datacenter
        validates :datacenter, type: Integer

        # @return [Integer, nil] kernel to use for the instance (Linode Kernel)
        attribute :kernel_id
        validates :kernel_id, type: Integer

        # @return [:yes, :no, nil] wait for the instance to be in state C(running) before returning
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Boolean, nil] Set status of Lassie watchdog.
        attribute :watchdog
        validates :watchdog, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
