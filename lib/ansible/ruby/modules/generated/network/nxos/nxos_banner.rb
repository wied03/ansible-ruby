# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This will configure both exec and motd banners on remote devices running Cisco NXOS. It allows playbooks to add or remote banner text from the active running configuration.
      class Nxos_banner < Base
        # @return [:exec, :motd] Specifies which banner that should be configured on the remote device.
        attribute :banner
        validates :banner, presence: true, expression_inclusion: {:in=>[:exec, :motd], :message=>"%{value} needs to be :exec, :motd"}

        # @return [String, nil] The banner text that should be present in the remote device running configuration. This argument accepts a multiline string, with no empty lines. Requires I(state=present).
        attribute :text
        validates :text, type: String

        # @return [:present, :absent, nil] Specifies whether or not the configuration is present in the current devices active running configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
