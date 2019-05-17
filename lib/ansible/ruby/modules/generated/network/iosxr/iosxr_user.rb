# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of the local usernames configured on network devices. It allows playbooks to manage either individual usernames or the aggregate of usernames in the current running config. It also supports purging usernames from the configuration that are not explicitly defined.
      class Iosxr_user < Base
        # @return [Array<Hash>, Hash, nil] The set of username objects to be configured on the remote Cisco IOS XR device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [String, nil] The username to be configured on the Cisco IOS XR device. This argument accepts a string value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).
        attribute :name
        validates :name, type: String

        # @return [String, nil] The password to be configured on the Cisco IOS XR device. The password needs to be provided in clear text. Password is encrypted on the device when used with I(cli) and by Ansible when used with I(netconf) using the same MD5 hash technique with salt size of 3. Please note that this option is not same as C(provider password).
        attribute :configured_password
        validates :configured_password, type: String

        # @return [:on_create, :always, nil] Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:on_create, :always], :message=>"%{value} needs to be :on_create, :always"}, allow_nil: true

        # @return [String, nil] Configures the group for the username in the device running configuration. The argument accepts a string value defining the group name. This argument does not check if the group has been configured on the device.
        attribute :group
        validates :group, type: String

        # @return [Array<String>, String, nil] Configures the groups for the username in the device running configuration. The argument accepts a list of group names. This argument does not check if the group has been configured on the device. It is similar to the aggregrate command for usernames, but lets you configure multiple groups for the user(s).
        attribute :groups
        validates :groups, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Instructs the module to consider the resource definition absolute. It will remove any previously configured usernames on the device with the exception of the `admin` user and the current defined set of users.
        attribute :purge
        validates :purge, type: Symbol

        # @return [:present, :absent, nil] Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Configures the contents of the public keyfile to upload to the IOS-XR node. This enables users to login using the accompanying private key. IOS-XR only accepts base64 decoded files, so this will be decoded and uploaded to the node. Do note that this requires an OpenSSL public key file, PuTTy generated files will not work! Mutually exclusive with public_key_contents. If used with multiple users in aggregates, then the same key file is used for all users.
        attribute :public_key

        # @return [String, nil] Configures the contents of the public keyfile to upload to the IOS-XR node. This enables users to login using the accompanying private key. IOS-XR only accepts base64 decoded files, so this will be decoded and uploaded to the node. Do note that this requires an OpenSSL public key file, PuTTy generated files will not work! Mutually exclusive with public_key.If used with multiple users in aggregates, then the same key file is used for all users.
        attribute :public_key_contents
        validates :public_key_contents, type: String
      end
    end
  end
end
