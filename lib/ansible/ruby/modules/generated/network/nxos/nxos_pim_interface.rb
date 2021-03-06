# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages PIM interface configuration settings.
      class Nxos_pim_interface < Base
        # @return [String] Full name of the interface such as Ethernet1/33.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [:yes, :no, nil] Enable/disable sparse-mode on the interface.
        attribute :sparse
        validates :sparse, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Configures priority for PIM DR election on interface.
        attribute :dr_prio
        validates :dr_prio, type: Integer

        # @return [Object, nil] Authentication for hellos on this interface.
        attribute :hello_auth_key

        # @return [Symbol, nil] Hello interval in milliseconds for this interface.
        attribute :hello_interval
        validates :hello_interval, type: Symbol

        # @return [String, nil] Policy for join-prune messages (outbound).
        attribute :jp_policy_out
        validates :jp_policy_out, type: String

        # @return [String, nil] Policy for join-prune messages (inbound).
        attribute :jp_policy_in
        validates :jp_policy_in, type: String

        # @return [:prefix, :routemap, nil] Type of policy mapped to C(jp_policy_out).
        attribute :jp_type_out
        validates :jp_type_out, expression_inclusion: {:in=>[:prefix, :routemap], :message=>"%{value} needs to be :prefix, :routemap"}, allow_nil: true

        # @return [:prefix, :routemap, nil] Type of policy mapped to C(jp_policy_in).
        attribute :jp_type_in
        validates :jp_type_in, expression_inclusion: {:in=>[:prefix, :routemap], :message=>"%{value} needs to be :prefix, :routemap"}, allow_nil: true

        # @return [:yes, :no, nil] Configures interface to be a boundary of a PIM domain.
        attribute :border
        validates :border, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Configures a neighbor policy for filtering adjacencies.
        attribute :neighbor_policy

        # @return [:prefix, :routemap, nil] Type of policy mapped to neighbor_policy.
        attribute :neighbor_type
        validates :neighbor_type, expression_inclusion: {:in=>[:prefix, :routemap], :message=>"%{value} needs to be :prefix, :routemap"}, allow_nil: true

        # @return [:present, :default, nil] Manages desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :default], :message=>"%{value} needs to be :present, :default"}, allow_nil: true
      end
    end
  end
end
