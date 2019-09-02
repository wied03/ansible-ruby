# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will configure both exec and motd banners on remote device running Cisco IOS XR. It allows playbooks to add or remove banner text from the running configuration.
      class Iosxr_banner < Base
        # @return [:login, :motd] Specifies the type of banner to configure on remote device.
        attribute :banner
        validates :banner, presence: true, expression_inclusion: {:in=>[:login, :motd], :message=>"%{value} needs to be :login, :motd"}

        # @return [String, nil] Banner text to be configured. Accepts multiline string, without empty lines. Requires I(state=present).
        attribute :text
        validates :text, type: String

        # @return [:present, :absent, nil] Existential state of the configuration on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
