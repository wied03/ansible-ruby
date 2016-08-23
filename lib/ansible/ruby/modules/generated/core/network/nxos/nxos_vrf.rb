# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_vrf < Base
        # @return [String] Name of VRF to be managed
        attribute :vrf
        validates :vrf, presence: true, type: String

        # @return [String] Administrative state of the VRF
        attribute :admin_state
        validates :admin_state, inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [String] Manages desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Description of the VRF
        attribute :description
      end
    end
  end
end