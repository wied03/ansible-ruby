# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # allows you to create/remove/update firewall rules
      class Win_firewall_rule < Base
        # @return [Boolean, nil] is this firewall rule enabled or disabled
        attribute :enable
        validates :enable, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent] should this rule be added or removed
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] the rules name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:in, :out] is this rule for inbound or outbound trafic
        attribute :direction
        validates :direction, presence: true, inclusion: {:in=>[:in, :out], :message=>"%{value} needs to be :in, :out"}

        # @return [:allow, :block, :bypass] what to do with the items this rule is for
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:allow, :block, :bypass], :message=>"%{value} needs to be :allow, :block, :bypass"}

        # @return [Object, nil] description for the firewall rule
        attribute :description

        # @return [String, nil] the local ip address this rule applies to
        attribute :localip
        validates :localip, type: String

        # @return [String, nil] the remote ip address/range this rule applies to
        attribute :remoteip
        validates :remoteip, type: String

        # @return [String, nil] the local port this rule applies to
        attribute :localport
        validates :localport, type: String

        # @return [String, nil] the remote port this rule applies to
        attribute :remoteport
        validates :remoteport, type: String

        # @return [Object, nil] the program this rule applies to
        attribute :program

        # @return [String, nil] the service this rule applies to
        attribute :service
        validates :service, type: String

        # @return [String, nil] the protocol this rule applies to
        attribute :protocol
        validates :protocol, type: String

        # @return [String, nil] the profile this rule applies to, e.g. Domain,Private,Public
        attribute :profile
        validates :profile, type: String

        # @return [Boolean, nil] Enforces the change if a rule with different values exists
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
