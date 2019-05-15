# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will import/delete SSL keys on a BIG-IP. Keys can be imported from key files on the local disk, in PEM format.
      class Bigip_ssl_key < Base
        # @return [String, nil] Sets the contents of a key directly to the specified value. This is used with lookup plugins or for anything with formatting or templating. This must be provided when C(state) is C(present).
        attribute :content
        validates :content, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the key is uploaded to the device. When C(absent), ensures that the key is removed from the device. If the key is currently in use, the module will not be able to remove the key.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the key.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Passphrase on key.
        attribute :passphrase

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
