# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This will configure both login and motd banners on remote devices running Cisco IOS.  It allows playbooks to add or remote banner text from the active running configuration.
      class Ios_banner < Base
        # @return [:login, :motd, :exec, :incoming, :"slip-ppp"] Specifies which banner should be configured on the remote device. In Ansible 2.4 and earlier only I(login) and I(motd) were supported.
        attribute :banner
        validates :banner, presence: true, inclusion: {:in=>[:login, :motd, :exec, :incoming, :"slip-ppp"], :message=>"%{value} needs to be :login, :motd, :exec, :incoming, :\"slip-ppp\""}

        # @return [String, nil] The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string, with no empty lines. Requires I(state=present).
        attribute :text
        validates :text, type: String

        # @return [:present, :absent, nil] Specifies whether or not the configuration is present in the current devices active running configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
