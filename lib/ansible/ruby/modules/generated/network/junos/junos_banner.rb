# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This will configure both login and motd banners on network devices. It allows playbooks to add or remote banner text from the active running configuration.
      class Junos_banner < Base
        # @return [:login, :motd] Specifies which banner that should be configured on the remote device. Value C(login) indicates system login message prior to authenticating, C(motd) is login announcement after successful authentication.
        attribute :banner
        validates :banner, presence: true, inclusion: {:in=>[:login, :motd], :message=>"%{value} needs to be :login, :motd"}

        # @return [String, nil] The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string, with no empty lines. Requires I(state=present).
        attribute :text
        validates :text, type: String

        # @return [:present, :absent, nil] Specifies whether or not the configuration is present in the current devices active running configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
