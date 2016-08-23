# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_key < Base
        # @return [String] Name of the key pair.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Public key material.
        attribute :key_material
        validates :key_material, type: String

        # @return [String] create or delete keypair
        attribute :state
        validates :state, type: String

        # @return [Object] Wait for the specified action to complete before returning.
        attribute :wait

        # @return [Fixnum] How long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum
      end
    end
  end
end
