# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Openvswitch_bridge < Base
        # @return [String] Name of bridge to manage
        attribute :bridge
        validates :bridge, presence: true, type: String

        # @return [String] Whether the bridge should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] How long to wait for ovs-vswitchd to respond
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [String] A dictionary of external-ids. Omitting this parameter is a No-op. To  clear all external-ids pass an empty value.
        attribute :external_ids
        validates :external_ids, type: String

        # @return [String] Set bridge fail-mode. The default value (None) is a No-op.
        attribute :fail_mode
        validates :fail_mode, inclusion: {:in=>[:secure, :standalone], :message=>"%{value} needs to be :secure, :standalone"}, allow_nil: true
      end
    end
  end
end