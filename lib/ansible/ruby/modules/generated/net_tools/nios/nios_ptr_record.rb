# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds and/or removes instances of PTR record objects from Infoblox NIOS servers.  This module manages NIOS C(record:ptr) objects using the Infoblox WAPI interface over REST.
      class Nios_ptr_record < Base
        # @return [Object, nil] The name of the DNS PTR record in FQDN format to add or remove from the system. The field is required only for an PTR object in Forward Mapping Zone.
        attribute :name

        # @return [Object, nil] Sets the DNS view to associate this a record with. The DNS view must already be configured on the system
        attribute :view

        # @return [Object] The IPv4 Address of the record. Mutually exclusive with the ipv6addr.
        attribute :ipv4addr
        validates :ipv4addr, presence: true

        # @return [Object] The IPv6 Address of the record. Mutually exclusive with the ipv4addr.
        attribute :ipv6addr
        validates :ipv6addr, presence: true

        # @return [String] The domain name of the DNS PTR record in FQDN format.
        attribute :ptrdname
        validates :ptrdname, presence: true, type: String

        # @return [Object, nil] Time To Live (TTL) value for the record. A 32-bit unsigned integer that represents the duration, in seconds, that the record is valid (cached). Zero indicates that the record should not be cached.
        attribute :ttl

        # @return [Object, nil] Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.
        attribute :extattrs

        # @return [Object, nil] Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance. Maximum 256 characters.
        attribute :comment

        # @return [:present, :absent, nil] Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
