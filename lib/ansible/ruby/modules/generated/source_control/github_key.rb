# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, removes, or updates GitHub access keys.
      class Github_key < Base
        # @return [String] GitHub Access Token with permission to list and create public keys.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] SSH key name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] SSH public key value. Required when C(state=present).
        attribute :pubkey
        validates :pubkey, type: String

        # @return [:present, :absent, nil] Whether to remove a key, ensure that it exists, or update its value.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The default is C(yes), which will replace the existing remote key if it's different than C(pubkey). If C(no), the key will only be set if no key with the given C(name) exists.
        attribute :force
        validates :force, type: String
      end
    end
  end
end
