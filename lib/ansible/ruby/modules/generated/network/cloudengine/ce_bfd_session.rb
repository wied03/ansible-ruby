# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BFD session configuration, creates a BFD session or deletes a specified BFD session on HUAWEI CloudEngine devices.
      class Ce_bfd_session < Base
        # @return [Object] Specifies the name of a BFD session. The value is a string of 1 to 15 case-sensitive characters without spaces.
        attribute :session_name
        validates :session_name, presence: true

        # @return [:static, :auto, nil] BFD session creation mode, the currently created BFD session only supports static or static auto-negotiation mode.
        attribute :create_type
        validates :create_type, expression_inclusion: {:in=>[:static, :auto], :message=>"%{value} needs to be :static, :auto"}, allow_nil: true

        # @return [:ipv4, nil] Specifies the peer IP address type.
        attribute :addr_type
        validates :addr_type, expression_inclusion: {:in=>[:ipv4], :message=>"%{value} needs to be :ipv4"}, allow_nil: true

        # @return [Object, nil] Specifies the type and number of the interface bound to the BFD session.
        attribute :out_if_name

        # @return [Object, nil] Specifies the peer IP address bound to the BFD session.
        attribute :dest_addr

        # @return [Object, nil] Indicates the source IP address carried in BFD packets.
        attribute :src_addr

        # @return [Object, nil] Specifies the name of a Virtual Private Network (VPN) instance that is bound to a BFD session. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value _public_ is reserved and cannot be used as the VPN instance name.
        attribute :vrf_name

        # @return [:yes, :no, nil] Indicates the default multicast IP address that is bound to a BFD session. By default, BFD uses the multicast IP address 224.0.0.184. You can set the multicast IP address by running the default-ip-address command. The value is a bool type.
        attribute :use_default_ip
        validates :use_default_ip, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
