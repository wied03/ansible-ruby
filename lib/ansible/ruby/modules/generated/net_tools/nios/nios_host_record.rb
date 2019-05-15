# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds and/or removes instances of host record objects from Infoblox NIOS servers.  This module manages NIOS C(record:host) objects using the Infoblox WAPI interface over REST.
      # Updates instances of host record object from Infoblox NIOS servers.
      class Nios_host_record < Base
        # @return [String, Hash] Specifies the fully qualified hostname to add or remove from the system. User can also update the hostname as it is possible to pass a dict containing I(new_name), I(old_name). See examples.
        attribute :name
        validates :name, presence: true, type: MultipleTypes.new(String, Hash)

        # @return [String] Sets the DNS view to associate this host record with.  The DNS view must already be configured on the system
        attribute :view
        validates :view, presence: true, type: String

        # @return [Boolean, nil] Sets the DNS to particular parent. If user needs to bypass DNS user can make the value to false.
        attribute :configure_for_dns
        validates :configure_for_dns, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Configures the IPv4 addresses for this host record.  This argument accepts a list of values (see suboptions)
        attribute :ipv4addrs

        # @return [Object, nil] Configures the IPv6 addresses for the host record.  This argument accepts a list of values (see options)
        attribute :ipv6addrs

        # @return [Array<String>, String, nil] Configures an optional list of additional aliases to add to the host record. These are equivalent to CNAMEs but held within a host record. Must be in list format.
        attribute :aliases
        validates :aliases, type: TypeGeneric.new(String)

        # @return [Object, nil] Configures the TTL to be associated with this host record
        attribute :ttl

        # @return [Object, nil] Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.
        attribute :extattrs

        # @return [String, nil] Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.
        attribute :comment
        validates :comment, type: String

        # @return [:present, :absent, nil] Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
