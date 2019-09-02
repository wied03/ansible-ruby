# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds and/or removes instances of NAPTR record objects from Infoblox NIOS servers.  This module manages NIOS C(record:naptr) objects using the Infoblox WAPI interface over REST.
      class Nios_naptr_record < Base
        # @return [String] Specifies the fully qualified hostname to add or remove from the system
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Sets the DNS view to associate this a record with. The DNS view must already be configured on the system
        attribute :view
        validates :view, presence: true, type: String

        # @return [Integer] Configures the order (0-65535) for this NAPTR record. This parameter specifies the order in which the NAPTR rules are applied when multiple rules are present.
        attribute :order
        validates :order, presence: true, type: Integer

        # @return [Integer] Configures the preference (0-65535) for this NAPTR record. The preference field determines the order NAPTR records are processed when multiple records with the same order parameter are present.
        attribute :preference
        validates :preference, presence: true, type: Integer

        # @return [String] Configures the replacement field for this NAPTR record. For nonterminal NAPTR records, this field specifies the next domain name to look up.
        attribute :replacement
        validates :replacement, presence: true, type: String

        # @return [Object, nil] Configures the services field (128 characters maximum) for this NAPTR record. The services field contains protocol and service identifiers, such as "http+E2U" or "SIPS+D2T".
        attribute :services

        # @return [Object, nil] Configures the flags field for this NAPTR record. These control the interpretation of the fields for an NAPTR record object. Supported values for the flags field are "U", "S", "P" and "A".
        attribute :flags

        # @return [Object, nil] Configures the regexp field for this NAPTR record. This is the regular expression-based rewriting rule of the NAPTR record. This should be a POSIX compliant regular expression, including the substitution rule and flags. Refer to RFC 2915 for the field syntax details.
        attribute :regexp

        # @return [Object, nil] Configures the TTL to be associated with this NAPTR record
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
