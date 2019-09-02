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

        # @return [Integer, nil] Time interval between advertisement or 'default' keyword
        attribute :interval
        validates :interval, type: Integer

        # @return [Integer, nil] VRRP priority or 'default' keyword
        attribute :priority
        validates :priority, type: Integer

        # @return [:yes, :no, nil] Enable/Disable preempt.
        attribute :preempt
        validates :preempt, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] VRRP virtual IP address or 'default' keyword
        attribute :vip
        validates :vip, type: String

        # @return [String, nil] Clear text authentication string or 'default' keyword
        attribute :authentication
        validates :authentication, type: String

        # @return [:shutdown, :"no shutdown", :default, nil] Used to enable or disable the VRRP process.
        attribute :admin_state
        validates :admin_state, expression_inclusion: {:in=>[:shutdown, :"no shutdown", :default], :message=>"%{value} needs to be :shutdown, :\"no shutdown\", :default"}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
