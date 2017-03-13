# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # maintains ec2 key pairs. This module has a dependency on python-boto >= 2.5
      class Ec2_key < Base
        # @return [String] Name of the key pair.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Public key material.
        attribute :key_material
        validates :key_material, type: String

        # @return [String, nil] create or delete keypair
        attribute :state
        validates :state, type: String

        # @return [Boolean, nil] Wait for the specified action to complete before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
