# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages locally configured user accounts on remote network devices running the JUNOS operating system.  It provides a set of arguments for creating, removing and updating locally defined accounts
      class Junos_user < Base
        # @return [Array<Hash>, Hash, nil] The C(aggregate) argument defines a list of users to be configured on the remote device.  The list of users will be compared against the current users and only changes will be added or removed from the device configuration.  This argument is mutually exclusive with the name argument.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [String, nil] The C(name) argument defines the username of the user to be created on the system.  This argument must follow appropriate usernaming conventions for the target device running JUNOS.  This argument is mutually exclusive with the C(aggregate) argument.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The C(full_name) argument provides the full name of the user account to be created on the remote device.  This argument accepts any text string value.
        attribute :full_name

        # @return [:operator, :"read-only", :"super-user", :unauthorized, nil] The C(role) argument defines the role of the user account on the remote system.  User accounts can have more than one role configured.
        attribute :role
        validates :role, expression_inclusion: {:in=>[:operator, :"read-only", :"super-user", :unauthorized], :message=>"%{value} needs to be :operator, :\"read-only\", :\"super-user\", :unauthorized"}, allow_nil: true

        # @return [String, nil] The C(sshkey) argument defines the public SSH key to be configured for the user account on the remote system.  This argument must be a valid SSH key
        attribute :sshkey
        validates :sshkey, type: String

        # @return [:yes, :no, nil] The C(purge) argument instructs the module to consider the users definition absolute.  It will remove any previously configured users on the device with the exception of the current defined set of aggregate.
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] The C(state) argument configures the state of the user definitions as it relates to the device operational configuration.  When set to I(present), the user should be configured in the device active configuration and when set to I(absent) the user should not be in the device active configuration
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
