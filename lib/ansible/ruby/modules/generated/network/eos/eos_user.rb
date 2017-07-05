# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of the local usernames configured on Arista EOS devices.  It allows playbooks to manage either individual usernames or the collection of usernames in the current running config.  It also supports purging usernames from the configuration that are not explicitly defined.
      class Eos_user < Base
        # @return [Array<Hash>, Hash, nil] The set of username objects to be configured on the remote Arista EOS device.  The list entries can either be the username or a hash of username and properties.  This argument is mutually exclusive with the C(username) argument.
        attribute :users
        validates :users, type: TypeGeneric.new(Hash)

        # @return [String, nil] The username to be configured on the remote Arista EOS device.  This argument accepts a stringv value and is mutually exclusive with the C(users) argument. Please note that this option is not same as C(provider username).
        attribute :username
        validates :username, type: String

        # @return [:on_create, :always, nil] Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:on_create, :always], :message=>"%{value} needs to be :on_create, :always"}, allow_nil: true

        # @return [Integer, nil] The C(privilege) argument configures the privilege level of the user when logged into the system.  This argument accepts integer values in the range of 1 to 15.
        attribute :privilege
        validates :privilege, type: Integer

        # @return [Object, nil] Configures the role for the username in the device running configuration.  The argument accepts a string value defining the role name.  This argument does not check if the role has been configured on the device.
        attribute :role

        # @return [String, nil] Specifies the SSH public key to configure for the given username.  This argument accepts a valid SSH key value.
        attribute :sshkey
        validates :sshkey, type: String

        # @return [Object, nil] Defines the username without assigning a password.  This will allow the user to login to the system without being authenticated by a password.
        attribute :nopassword

        # @return [Boolean, nil] Instructs the module to consider the resource definition absolute.  It will remove any previously configured usernames on the device with the exception of the `admin` user which cannot be deleted per EOS constraints.
        attribute :purge
        validates :purge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Configures the state of the username definition as it relates to the device operational configuration.  When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end