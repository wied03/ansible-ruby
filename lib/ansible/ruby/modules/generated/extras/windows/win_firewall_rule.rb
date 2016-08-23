# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_firewall_rule < Base
        # @return [:yes, :no, nil] is this firewall rule enabled or disabled
        attribute :enable
        validates :enable, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent] should this rule be added or removed
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] the rules name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:In, :Out] is this rule for inbound or outbound trafic
        attribute :direction
        validates :direction, presence: true, inclusion: {:in=>[:In, :Out], :message=>"%{value} needs to be :In, :Out"}

        # @return [:allow, :block] what to do with the items this rule is for
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:allow, :block], :message=>"%{value} needs to be :allow, :block"}

        # @return [Object, nil] description for the firewall rule
        attribute :description

        # @return [Object, nil] the local ip address this rule applies to
        attribute :localip

        # @return [Object, nil] the remote ip address/range this rule applies to
        attribute :remoteip

        # @return [Integer, nil] the local port this rule applies to
        attribute :localport
        validates :localport, type: Integer

        # @return [Object, nil] the remote port this rule applies to
        attribute :remoteport

        # @return [Object, nil] the program this rule applies to
        attribute :program

        # @return [Object, nil] the service this rule applies to
        attribute :service

        # @return [String, nil] the protocol this rule applies to
        attribute :protocol
        validates :protocol, type: String

        # @return [Object, nil] the profile this rule applies to
        attribute :profile

        # @return [Object, nil] Enforces the change if a rule with different values exists
        attribute :force
      end
    end
  end
end
