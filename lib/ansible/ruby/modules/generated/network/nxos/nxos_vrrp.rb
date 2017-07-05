# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VRRP configuration on NX-OS switches.
      class Nxos_vrrp < Base
        # @return [Integer] VRRP group number.
        attribute :group
        validates :group, presence: true, type: Integer

        # @return [String] Full name of interface that is being managed for VRRP.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [Integer, nil] VRRP priority.
        attribute :priority
        validates :priority, type: Integer

        # @return [String, nil] VRRP virtual IP address.
        attribute :vip
        validates :vip, type: String

        # @return [String, nil] Clear text authentication string.
        attribute :authentication
        validates :authentication, type: String

        # @return [:shutdown, :"no shutdown", nil] Used to enable or disable the VRRP process.
        attribute :admin_state
        validates :admin_state, inclusion: {:in=>[:shutdown, :"no shutdown"], :message=>"%{value} needs to be :shutdown, :\"no shutdown\""}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
