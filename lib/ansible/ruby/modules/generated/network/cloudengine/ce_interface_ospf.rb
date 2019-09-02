# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages configuration of an OSPF interface instanceon HUAWEI CloudEngine switches.
      class Ce_interface_ospf < Base
        # @return [Object] Full name of interface, i.e. 40GE1/0/10.
        attribute :interface
        validates :interface, presence: true

        # @return [Object] Specifies a process ID. The value is an integer ranging from 1 to 4294967295.
        attribute :process_id
        validates :process_id, presence: true

        # @return [Object] Ospf area associated with this ospf process. Valid values are a string, formatted as an IP address (i.e. "0.0.0.0") or as an integer between 1 and 4294967295.
        attribute :area
        validates :area, presence: true

        # @return [Object, nil] The cost associated with this interface. Valid values are an integer in the range from 1 to 65535.
        attribute :cost

        # @return [Object, nil] Time between sending successive hello packets. Valid values are an integer in the range from 1 to 65535.
        attribute :hello_interval

        # @return [Object, nil] Time interval an ospf neighbor waits for a hello packet before tearing down adjacencies. Valid values are an integer in the range from 1 to 235926000.
        attribute :dead_interval

        # @return [:yes, :no, nil] Setting to true will prevent this interface from receiving HELLO packets. Valid values are 'true' and 'false'.
        attribute :silent_interface
        validates :silent_interface, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:none, :null, :"hmac-sha256", :md5, :"hmac-md5", :simple, nil] Specifies the authentication type.
        attribute :auth_mode
        validates :auth_mode, expression_inclusion: {:in=>[:none, :null, :"hmac-sha256", :md5, :"hmac-md5", :simple], :message=>"%{value} needs to be :none, :null, :\"hmac-sha256\", :md5, :\"hmac-md5\", :simple"}, allow_nil: true

        # @return [Object, nil] Specifies a password for simple authentication. The value is a string of 1 to 8 characters.
        attribute :auth_text_simple

        # @return [Object, nil] Authentication key id when C(auth_mode) is 'hmac-sha256', 'md5' or 'hmac-md5. Valid value is an integer is in the range from 1 to 255.
        attribute :auth_key_id

        # @return [Object, nil] Specifies a password for MD5, HMAC-MD5, or HMAC-SHA256 authentication. The value is a string of 1 to 255 case-sensitive characters, spaces not supported.
        attribute :auth_text_md5

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
