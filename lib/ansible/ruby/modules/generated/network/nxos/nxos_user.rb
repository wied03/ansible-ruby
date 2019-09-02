# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of the local usernames configured on Cisco Nexus devices.  It allows playbooks to manage either individual usernames or the collection of usernames in the current running config.  It also supports purging usernames from the configuration that are not explicitly defined.
      class Nxos_user < Base
        # @return [Object, nil] The set of username objects to be configured on the remote Cisco Nexus device.  The list entries can either be the username or a hash of username and properties.  This argument is mutually exclusive with the C(name) argument.
        attribute :aggregate

        # @return [String, nil] The username to be configured on the remote Cisco Nexus device.  This argument accepts a string value and is mutually exclusive with the C(aggregate) argument.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The password to be configured on the network device. The password needs to be provided in cleartext and it will be encrypted on the device. Please note that this option is not same as C(provider password).
        attribute :configured_password

        # @return [:on_create, :always, nil] Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.
        attribute :update_password
        validates :update_password, expression_inclusion: {:in=>[:on_create, :always], :message=>"%{value} needs to be :on_create, :always"}, allow_nil: true

        # @return [Object, nil] The C(role) argument configures the role for the username in the device running configuration.  The argument accepts a string value defining the role name.  This argument does not check if the role has been configured on the device.
        attribute :role

        # @return [String, nil] The C(sshkey) argument defines the SSH public key to configure for the username.  This argument accepts a valid SSH key value.
        attribute :sshkey
        validates :sshkey, type: String

        # @return [:yes, :no, nil] The C(purge) argument instructs the module to consider the resource definition absolute.  It will remove any previously configured usernames on the device with the exception of the `admin` user which cannot be deleted per nxos constraints.
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] The C(state) argument configures the state of the username definition as it relates to the device operational configuration.  When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
