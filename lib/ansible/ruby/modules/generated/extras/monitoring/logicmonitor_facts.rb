# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # LogicMonitor is a hosted, full-stack, infrastructure monitoring platform.
      # This module collects facts about hosts abd host groups within your LogicMonitor account.
      class Logicmonitor_facts < Base
        # @return [:host, :hostgroup] The LogicMonitor object you wish to manage.
        attribute :target
        validates :target, presence: true, inclusion: {:in=>[:host, :hostgroup], :message=>"%{value} needs to be :host, :hostgroup"}

        # @return [String] The LogicMonitor account company name. If you would log in to your account at "superheroes.logicmonitor.com" you would use "superheroes".
        attribute :company
        validates :company, presence: true, type: String

        # @return [String] A LogicMonitor user name. The module will authenticate and perform actions on behalf of this user.
        attribute :user
        validates :user, presence: true, type: String

        # @return [Array<String>, String] The password for the chosen LogicMonitor User.,If an md5 hash is used, the digest flag must be set to true.
        attribute :password
        validates :password, presence: true, type: TypeGeneric.new(String)

        # @return [Object, nil] The fully qualified domain name of a collector in your LogicMonitor account.,This is optional for querying a LogicMonitor host when a displayname is specified.,This is required for querying a LogicMonitor host when a displayname is not specified.
        attribute :collector

        # @return [String, nil] The hostname of a host in your LogicMonitor account, or the desired hostname of a device to add into monitoring.,Required for managing hosts (target=host).
        attribute :hostname
        validates :hostname, type: String

        # @return [String, nil] The display name of a host in your LogicMonitor account or the desired display name of a device to add into monitoring.
        attribute :displayname
        validates :displayname, type: String

        # @return [Object, nil] The fullpath of the hostgroup object you would like to manage.,Recommend running on a single ansible host.,Required for management of LogicMonitor host groups (target=hostgroup).
        attribute :fullpath
      end
    end
  end
end
