# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages configuration of an OSPF interface instance.
      class Nxos_interface_ospf < Base
        # @return [String] Name of this cisco_interface resource. Valid value is a string.
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [Integer] Name of the ospf instance.
        attribute :ospf
        validates :ospf, presence: true, type: Integer

        # @return [Integer] Ospf area associated with this cisco_interface_ospf instance. Valid values are a string, formatted as an IP address (i.e. "0.0.0.0") or as an integer.
        attribute :area
        validates :area, presence: true, type: Integer

        # @return [String, nil] The cost associated with this cisco_interface_ospf instance.
        attribute :cost
        validates :cost, type: String

        # @return [Object, nil] Time between sending successive hello packets. Valid values are an integer or the keyword 'default'.
        attribute :hello_interval

        # @return [Object, nil] Time interval an ospf neighbor waits for a hello packet before tearing down adjacencies. Valid values are an integer or the keyword 'default'.
        attribute :dead_interval

        # @return [Symbol, nil] Setting to true will prevent this interface from receiving HELLO packets.
        attribute :passive_interface
        validates :passive_interface, type: Symbol

        # @return [Symbol, nil] Enables or disables the usage of message digest authentication.
        attribute :message_digest
        validates :message_digest, type: Symbol

        # @return [Object, nil] Md5 authentication key-id associated with the ospf instance. If this is present, message_digest_encryption_type, message_digest_algorithm_type and message_digest_password are mandatory. Valid value is an integer and 'default'.
        attribute :message_digest_key_id

        # @return [:md5, :default, nil] Algorithm used for authentication among neighboring routers within an area. Valid values are 'md5' and 'default'.
        attribute :message_digest_algorithm_type
        validates :message_digest_algorithm_type, expression_inclusion: {:in=>[:md5, :default], :message=>"%{value} needs to be :md5, :default"}, allow_nil: true

        # @return [:cisco_type_7, :"3des", :default, nil] Specifies the scheme used for encrypting message_digest_password. Valid values are '3des' or 'cisco_type_7' encryption or 'default'.
        attribute :message_digest_encryption_type
        validates :message_digest_encryption_type, expression_inclusion: {:in=>[:cisco_type_7, :"3des", :default], :message=>"%{value} needs to be :cisco_type_7, :\"3des\", :default"}, allow_nil: true

        # @return [Object, nil] Specifies the message_digest password. Valid value is a string.
        attribute :message_digest_password

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
