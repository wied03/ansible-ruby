# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages physical attributes of interfaces on HUAWEI CloudEngine switches.
      class Ce_interface < Base
        # @return [Object, nil] Full name of interface, i.e. 40GE1/0/10, Tunnel1.
        attribute :interface

        # @return [:ge, :"10ge", :"25ge", :"4x10ge", :"40ge", :"100ge", :vlanif, :loopback, :meth, :"eth-trunk", :nve, :tunnel, :ethernet, :"fcoe-port", :"fabric-port", :"stack-port", :null, nil] Interface type to be configured from the device.
        attribute :interface_type
        validates :interface_type, expression_inclusion: {:in=>[:ge, :"10ge", :"25ge", :"4x10ge", :"40ge", :"100ge", :vlanif, :loopback, :meth, :"eth-trunk", :nve, :tunnel, :ethernet, :"fcoe-port", :"fabric-port", :"stack-port", :null], :message=>"%{value} needs to be :ge, :\"10ge\", :\"25ge\", :\"4x10ge\", :\"40ge\", :\"100ge\", :vlanif, :loopback, :meth, :\"eth-trunk\", :nve, :tunnel, :ethernet, :\"fcoe-port\", :\"fabric-port\", :\"stack-port\", :null"}, allow_nil: true

        # @return [:up, :down, nil] Specifies the interface management status. The value is an enumerated type. up, An interface is in the administrative Up state. down, An interface is in the administrative Down state.
        attribute :admin_state
        validates :admin_state, expression_inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [Object, nil] Specifies an interface description. The value is a string of 1 to 242 case-sensitive characters, spaces supported but question marks (?) not supported.
        attribute :description

        # @return [:layer2, :layer3, nil] Manage Layer 2 or Layer 3 state of the interface.
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:layer2, :layer3], :message=>"%{value} needs to be :layer2, :layer3"}, allow_nil: true

        # @return [:yes, :no, nil] Specifies whether the interface is a Layer 2 sub-interface.
        attribute :l2sub
        validates :l2sub, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, :default, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :default], :message=>"%{value} needs to be :present, :absent, :default"}, allow_nil: true
      end
    end
  end
end
