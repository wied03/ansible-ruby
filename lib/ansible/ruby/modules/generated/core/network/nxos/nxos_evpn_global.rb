# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Handles the EVPN control plane for VXLAN.
      class Nxos_evpn_global < Base
        # @return [:true, :false] EVPN control plane.
        attribute :nv_overlay_evpn
        validates :nv_overlay_evpn, presence: true, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}
      end
    end
  end
end
