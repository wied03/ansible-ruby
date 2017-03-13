# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # LogicMonitor is a hosted, full-stack, infrastructure monitoring platform.
      # This module manages hosts, host groups, and collectors within your LogicMonitor account.
      class Logicmonitor < Base
        # @return [:collector, :host, :datsource, :hostgroup] The type of LogicMonitor object you wish to manage.,Collector: Perform actions on a LogicMonitor collector.,NOTE You should use Ansible service modules such as M(service) or M(supervisorctl) for managing the Collector 'logicmonitor-agent' and 'logicmonitor-watchdog' services. Specifically, you'll probably want to start these services after a Collector add and stop these services before a Collector remove.,Host: Perform actions on a host device.,Hostgroup: Perform actions on a LogicMonitor host group.,NOTE Host and Hostgroup tasks should always be performed via local_action. There are no benefits to running these tasks on the remote host and doing so will typically cause problems.
        attribute :target
        validates :target, presence: true, inclusion: {:in=>[:collector, :host, :datsource, :hostgroup], :message=>"%{value} needs to be :collector, :host, :datsource, :hostgroup"}

        # @return [:add, :remove, :update, :sdt] The action you wish to perform on target.,Add: Add an object to your LogicMonitor account.,Remove: Remove an object from your LogicMonitor account.,Update: Update properties, description, or groups (target=host) for an object in your LogicMonitor account.,SDT: Schedule downtime for an object in your LogicMonitor account.
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:add, :remove, :update, :sdt], :message=>"%{value} needs to be :add, :remove, :update, :sdt"}

        # @return [String] The LogicMonitor account company name. If you would log in to your account at "superheroes.logicmonitor.com" you would use "superheroes."
        attribute :company
        validates :company, presence: true, type: String

        # @return [String] A LogicMonitor user name. The module will authenticate and perform actions on behalf of this user.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] The password of the specified LogicMonitor user
        attribute :password
        validates :password, presence: true, type: String

        # @return [Object, nil] The fully qualified domain name of a collector in your LogicMonitor account.,This is required for the creation of a LogicMonitor host (target=host action=add).,This is required for updating, removing or scheduling downtime for hosts if 'displayname' isn't specified (target=host action=update action=remove action=sdt).
        attribute :collector

        # @return [String, nil] The hostname of a host in your LogicMonitor account, or the desired hostname of a device to manage.,Optional for managing hosts (target=host).
        attribute :hostname
        validates :hostname, type: String

        # @return [String, nil] The display name of a host in your LogicMonitor account or the desired display name of a device to manage.,Optional for managing hosts (target=host).
        attribute :displayname
        validates :displayname, type: String

        # @return [String, nil] The long text description of the object in your LogicMonitor account.,Optional for managing hosts and host groups (target=host or target=hostgroup; action=add or action=update).
        attribute :description
        validates :description, type: String

        # @return [Object, nil] A dictionary of properties to set on the LogicMonitor host or host group.,Optional for managing hosts and host groups (target=host or target=hostgroup; action=add or action=update).,This parameter will add or update existing properties in your LogicMonitor account.
        attribute :properties

        # @return [Object, nil] A list of groups that the host should be a member of.,Optional for managing hosts (target=host; action=add or action=update).
        attribute :groups

        # @return [Object, nil] ID of the datasource to target.,Required for management of LogicMonitor datasources (target=datasource).
        attribute :id

        # @return [String, nil] The fullpath of the host group object you would like to manage.,Recommend running on a single Ansible host.,Required for management of LogicMonitor host groups (target=hostgroup).
        attribute :fullpath
        validates :fullpath, type: String

        # @return [Boolean, nil] A boolean flag to turn alerting on or off for an object.,Optional for managing all hosts (action=add or action=update).
        attribute :alertenable
        validates :alertenable, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The time that the Scheduled Down Time (SDT) should begin.,Optional for managing SDT (action=sdt).,Y-m-d H:M
        attribute :starttime
        validates :starttime, type: String

        # @return [Integer, nil] The duration (minutes) of the Scheduled Down Time (SDT).,Optional for putting an object into SDT (action=sdt).
        attribute :duration
        validates :duration, type: Integer
      end
    end
  end
end
