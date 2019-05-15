# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages NTP authentication.
      class Nxos_ntp_auth < Base
        # @return [Integer, nil] Authentication key identifier (numeric).
        attribute :key_id
        validates :key_id, type: Integer

        # @return [String, nil] MD5 String.
        attribute :md5string
        validates :md5string, type: String

        # @return [:text, :encrypt, nil] Whether the given md5string is in cleartext or has been encrypted. If in cleartext, the device will encrypt it before storing it.
        attribute :auth_type
        validates :auth_type, inclusion: {:in=>[:text, :encrypt], :message=>"%{value} needs to be :text, :encrypt"}, allow_nil: true

        # @return [:false, :true, nil] Whether the given key is required to be supplied by a time source for the device to synchronize to the time source.
        attribute :trusted_key
        validates :trusted_key, inclusion: {:in=>[:false, :true], :message=>"%{value} needs to be :false, :true"}, allow_nil: true

        # @return [:on, :off, nil] Turns NTP authentication on or off.
        attribute :authentication
        validates :authentication, inclusion: {:in=>[:on, :off], :message=>"%{value} needs to be :on, :off"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
