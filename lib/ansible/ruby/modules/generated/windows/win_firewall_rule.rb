# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows you to create/remove/update firewall rules.
      class Win_firewall_rule < Base
        # @return [String, nil] Is this firewall rule enabled or disabled.
        attribute :enabled
        validates :enabled, type: String

        # @return [:absent, :present, nil] Should this rule be added or removed.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] The rules name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:in, :out] Is this rule for inbound or outbound traffic.
        attribute :direction
        validates :direction, presence: true, inclusion: {:in=>[:in, :out], :message=>"%{value} needs to be :in, :out"}

        # @return [:allow, :block, :bypass] What to do with the items this rule is for.
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:allow, :block, :bypass], :message=>"%{value} needs to be :allow, :block, :bypass"}

        # @return [Object, nil] Description for the firewall rule.
        attribute :description

        # @return [String, nil] The local ip address this rule applies to.
        attribute :localip
        validates :localip, type: String

        # @return [String, nil] The remote ip address/range this rule applies to.
        attribute :remoteip
        validates :remoteip, type: String

        # @return [Integer, nil] The local port this rule applies to.
        attribute :localport
        validates :localport, type: Integer

        # @return [Object, nil] The remote port this rule applies to.
        attribute :remoteport

        # @return [Object, nil] The program this rule applies to.
        attribute :program

        # @return [Object, nil] The service this rule applies to.
        attribute :service

        # @return [String, nil] The protocol this rule applies to.
        attribute :protocol
        validates :protocol, type: String

        # @return [Array<String>, String, nil] The profile this rule applies to.
        attribute :profiles
        validates :profiles, type: TypeGeneric.new(String)

        # @return [String, nil] Replace any existing rule by removing it first.,This is no longer required in 2.4 as rules no longer need replacing when being modified.,DEPRECATED in 2.4 and will be removed in 2.9.
        attribute :force
        validates :force, type: String
      end
    end
  end
end
