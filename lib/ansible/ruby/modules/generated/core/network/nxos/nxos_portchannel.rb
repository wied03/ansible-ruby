# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages port-channel specific configuration parameters.
      class Nxos_portchannel < Base
        # @return [Integer] Channel-group number for the port-channel.
        attribute :group
        validates :group, presence: true, type: Integer

        # @return [Boolean, nil] Mode for the port-channel, i.e. on, active, passive.
        attribute :mode
        validates :mode, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Min links required to keep portchannel up.
        attribute :min_links

        # @return [Array<String>, String, nil] List of interfaces that will be managed in a given portchannel.
        attribute :members
        validates :members, type: TypeGeneric.new(String)

        # @return [Boolean, nil] When true it forces port-channel members to match what is declared in the members param. This can be used to remove members.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
