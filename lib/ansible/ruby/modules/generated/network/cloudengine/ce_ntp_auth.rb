# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages NTP authentication configuration on HUAWEI CloudEngine switches.
      class Ce_ntp_auth < Base
        # @return [Object] Authentication key identifier (numeric).
        attribute :key_id
        validates :key_id, presence: true

        # @return [Object, nil] Plain text with length of 1 to 255, encrypted text with length of 20 to 392.
        attribute :auth_pwd

        # @return [:"hmac-sha256", :md5, nil] Specify authentication algorithm.
        attribute :auth_mode
        validates :auth_mode, inclusion: {:in=>[:"hmac-sha256", :md5], :message=>"%{value} needs to be :\"hmac-sha256\", :md5"}, allow_nil: true

        # @return [:text, :encrypt, nil] Whether the given password is in cleartext or has been encrypted. If in cleartext, the device will encrypt it before storing it.
        attribute :auth_type
        validates :auth_type, inclusion: {:in=>[:text, :encrypt], :message=>"%{value} needs to be :text, :encrypt"}, allow_nil: true

        # @return [:enable, :disable, nil] Whether the given key is required to be supplied by a time source for the device to synchronize to the time source.
        attribute :trusted_key
        validates :trusted_key, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Configure ntp authentication enable or unconfigure ntp authentication enable.
        attribute :authentication
        validates :authentication, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
