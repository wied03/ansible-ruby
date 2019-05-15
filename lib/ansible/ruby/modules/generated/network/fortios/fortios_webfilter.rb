# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is able to configure a FortiGate or FortiOS by allowing the user to configure webfilter feature. For now it is able to handle url and content filtering capabilities. The module uses FortiGate REST API internally to configure the device.
      class Fortios_webfilter < Base
        # @return [String] FortiOS or FortiGate ip adress.
        attribute :host
        validates :host, presence: true, type: String

        # @return [String] FortiOS or FortiGate username.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String, nil] FortiOS or FortiGate password.
        attribute :password
        validates :password, type: String

        # @return [String, nil] Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.
        attribute :vdom
        validates :vdom, type: String

        # @return [Object, nil] Container for a group of url entries that the FortiGate must act upon
        attribute :webfilter_url

        # @return [Object, nil] Container for a group of content-filtering entries that the FortiGate must act upon
        attribute :webfilter_content
      end
    end
  end
end
