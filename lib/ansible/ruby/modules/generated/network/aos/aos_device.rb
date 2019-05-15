# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Apstra AOS Device module let you manage your devices in AOS easily. You can approve devices and define in which state the device should be. Currently only the state I(normal) is supported but the goal is to extend this module with additional state. This module is idempotent and support the I(check) mode. It's using the AOS REST API.
      class Aos_device < Base
        # @return [String] An existing AOS session as obtained by M(aos_login) module.
        attribute :session
        validates :session, presence: true, type: String

        # @return [String, nil] The device serial-number; i.e. uniquely identifies the device in the AOS system. Only one of I(name) or I(id) can be set.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The AOS internal id for a device; i.e. uniquely identifies the device in the AOS system. Only one of I(name) or I(id) can be set.
        attribute :id

        # @return [:normal, nil] Define in which state the device should be. Currently only I(normal) is supported but the goal is to add I(maint) and I(decomm).
        attribute :state
        validates :state, inclusion: {:in=>[:normal], :message=>"%{value} needs to be :normal"}, allow_nil: true

        # @return [String, nil] The approve argument instruct the module to convert a device in quarantine mode into approved mode.
        attribute :approve
        validates :approve, type: String

        # @return [Array<String>, String, nil] When approving a device using the I(approve) argument, it's possible define the location of the device.
        attribute :location
        validates :location, type: TypeGeneric.new(String)
      end
    end
  end
end
