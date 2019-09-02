# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/delete an SSH key in Packet host.
      # API is documented at U(https://www.packet.net/help/api/#page:ssh-keys,header:ssh-keys-ssh-keys-post).
      class Packet_sshkey < Base
        # @return [:present, :absent, nil] Indicate desired state of the target.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).
        attribute :auth_token

        # @return [Object, nil] Label for the key. If you keep it empty, it will be read from key string.
        attribute :label

        # @return [Object, nil] UUID of the key which you want to remove.
        attribute :id

        # @return [Object, nil] Fingerprint of the key which you want to remove.
        attribute :fingerprint

        # @return [Object, nil] Public Key string ({type} {base64 encoded key} {description}).
        attribute :key

        # @return [Object, nil] File with the public key.
        attribute :key_file
      end
    end
  end
end
