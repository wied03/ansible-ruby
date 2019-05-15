# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # create or delete an ec2 key pair.
      class Ec2_key < Base
        # @return [String] Name of the key pair.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Public key material.
        attribute :key_material
        validates :key_material, type: String

        # @return [Boolean, nil] Force overwrite of already existing key pair if key has changed.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] create or delete keypair
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Wait for the specified action to complete before returning. This option has no effect since version 2.5.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How long before wait gives up, in seconds. This option has no effect since version 2.5.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
