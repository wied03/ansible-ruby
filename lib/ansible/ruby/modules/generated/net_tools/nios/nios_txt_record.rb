# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds and/or removes instances of txt record objects from Infoblox NIOS servers.  This module manages NIOS C(record:txt) objects using the Infoblox WAPI interface over REST.
      class Nios_txt_record < Base
        # @return [String] Specifies the fully qualified hostname to add or remove from the system
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Sets the DNS view to associate this tst record with.  The DNS view must already be configured on the system
        attribute :view
        validates :view, presence: true, type: String

        # @return [String, nil] Text associated with the record. It can contain up to 255 bytes per substring, up to a total of 512 bytes. To enter leading, trailing, or embedded spaces in the text, add quotes around the text to preserve the spaces.
        attribute :text
        validates :text, type: String

        # @return [Object, nil] Configures the TTL to be associated with this tst record
        attribute :ttl

        # @return [Object, nil] Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.
        attribute :extattrs

        # @return [Object, nil] Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.
        attribute :comment

        # @return [:present, :absent, nil] Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
