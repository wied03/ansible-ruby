# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This will configure both pre-login and post-login banners on remote devices running VyOS. It allows playbooks to add or remote banner text from the active running configuration.
      class Vyos_banner < Base
        # @return [:"pre-login", :"post-login"] Specifies which banner that should be configured on the remote device.
        attribute :banner
        validates :banner, presence: true, inclusion: {:in=>[:"pre-login", :"post-login"], :message=>"%{value} needs to be :\"pre-login\", :\"post-login\""}

        # @return [String, nil] The banner text that should be present in the remote device running configuration. This argument accepts a multiline string, with no empty lines. Requires I(state=present).
        attribute :text
        validates :text, type: String

        # @return [:present, :absent, nil] Specifies whether or not the configuration is present in the current devices active running configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
