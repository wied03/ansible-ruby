# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add model devices on the FortiManager using jsonrpc API and have them pre-configured, so when central management is configured, the configuration is pushed down to the registering devices
      class Fmgr_provisioning < Base
        # @return [Object] The administrative domain (admon) the configuration belongs to
        attribute :adom
        validates :adom, presence: true

        # @return [Object, nil] The virtual domain (vdom) the configuration belongs to
        attribute :vdom

        # @return [Object] The FortiManager's Address.
        attribute :host
        validates :host, presence: true

        # @return [Object] The username to log into the FortiManager
        attribute :username
        validates :username, presence: true

        # @return [Object, nil] The password associated with the username account.
        attribute :password

        # @return [Object] The name of the policy package to be assigned to the device.
        attribute :policy_package
        validates :policy_package, presence: true

        # @return [String] The name of the device to be provisioned.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The name of the device group the provisioned device can belong to.
        attribute :group

        # @return [Object] The serial number of the device that will be provisioned.
        attribute :serial
        validates :serial, presence: true

        # @return [Object] The platform of the device, such as model number or VM.
        attribute :platform
        validates :platform, presence: true

        # @return [Object, nil] Description of the device to be provisioned.
        attribute :description

        # @return [Object] The Fortinet OS version to be used for the device, such as 5.0 or 6.0.
        attribute :os_version
        validates :os_version, presence: true

        # @return [Object, nil] The minor release number such as 6.X.1, as X being the minor release.
        attribute :minor_release

        # @return [Object, nil] The patch release number such as 6.0.X, as X being the patch release.
        attribute :patch_release

        # @return [Object] The Fortinet OS type to be pushed to the device, such as 'FOS' for FortiOS.
        attribute :os_type
        validates :os_type, presence: true
      end
    end
  end
end
