# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages configuration of an Protocol Independent Multicast (PIM) static rendezvous point (RP) address instance.
      class Nxos_pim_rp_address < Base
        # @return [String] Configures a Protocol Independent Multicast (PIM) static rendezvous point (RP) address. Valid values are unicast addresses.
        attribute :rp_address
        validates :rp_address, presence: true, type: String

        # @return [Object, nil] Group range for static RP. Valid values are multicast addresses.
        attribute :group_list

        # @return [Object, nil] Prefix list policy for static RP. Valid values are prefix-list policy names.
        attribute :prefix_list

        # @return [Object, nil] Route map policy for static RP. Valid values are route-map policy names.
        attribute :route_map

        # @return [Symbol, nil] Group range is treated in PIM bidirectional mode.
        attribute :bidir
        validates :bidir, type: Symbol

        # @return [:present, :absent, :default] Specify desired state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :default], :message=>"%{value} needs to be :present, :absent, :default"}
      end
    end
  end
end
