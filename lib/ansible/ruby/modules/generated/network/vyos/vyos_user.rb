# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of the local usernames configured on network devices. It allows playbooks to manage either individual usernames or the collection of usernames in the current running config. It also supports purging usernames from the configuration that are not explicitly defined.
      class Vyos_user < Base
        # @return [Array<Hash>, Hash, nil] The set of username objects to be configured on the remote VyOS device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [String, nil] The username to be configured on the VyOS device. This argument accepts a string value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The C(full_name) argument provides the full name of the user account to be created on the remote device. This argument accepts any text string value.
        attribute :full_name

        # @return [String, nil] The password to be configured on the VyOS device. The password needs to be provided in clear and it will be encrypted on the device. Please note that this option is not same as C(provider password).
        attribute :configured_password
        validates :configured_password, type: String

        # @return [:on_create, :always, nil] Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:on_create, :always], :message=>"%{value} needs to be :on_create, :always"}, allow_nil: true

        # @return [String, nil] The C(level) argument configures the level of the user when logged into the system. This argument accepts string values admin or operator.
        attribute :level
        validates :level, type: String

        # @return [Symbol, nil] Instructs the module to consider the resource definition absolute. It will remove any previously configured usernames on the device with the exception of the `admin` user (the current defined set of users).
        attribute :purge
        validates :purge, type: Symbol

        # @return [:present, :absent, nil] Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
