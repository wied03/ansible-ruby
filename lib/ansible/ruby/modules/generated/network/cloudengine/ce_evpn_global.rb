# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages global configuration of EVPN on HUAWEI CloudEngine switches.
      class Ce_evpn_global < Base
        # @return [:enable, :disable] Configure EVPN as the VXLAN control plane.
        attribute :evpn_overlay_enable
        validates :evpn_overlay_enable, presence: true, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}
      end
    end
  end
end
