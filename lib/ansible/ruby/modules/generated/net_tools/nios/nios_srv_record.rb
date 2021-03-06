# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds and/or removes instances of SRV record objects from Infoblox NIOS servers.  This module manages NIOS C(record:srv) objects using the Infoblox WAPI interface over REST.
      class Nios_srv_record < Base
        # @return [String] Specifies the fully qualified hostname to add or remove from the system
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Sets the DNS view to associate this a record with.  The DNS view must already be configured on the system
        attribute :view
        validates :view, presence: true, type: String

        # @return [Integer] Configures the port (0-65535) of this SRV record.
        attribute :port
        validates :port, presence: true, type: Integer

        # @return [Integer] Configures the priority (0-65535) for this SRV record.
        attribute :priority
        validates :priority, presence: true, type: Integer

        # @return [String] Configures the target FQDN for this SRV record.
        attribute :target
        validates :target, presence: true, type: String

        # @return [Integer] Configures the weight (0-65535) for this SRV record.
        attribute :weight
        validates :weight, presence: true, type: Integer

        # @return [Object, nil] Configures the TTL to be associated with this host record
        attribute :ttl

        # @return [Object, nil] Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.
        attribute :extattrs

        # @return [String, nil] Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.
        attribute :comment
        validates :comment, type: String

        # @return [:present, :absent, nil] Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
