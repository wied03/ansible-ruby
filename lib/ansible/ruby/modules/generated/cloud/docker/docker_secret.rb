# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove Docker secrets in a Swarm environment. Similar to `docker secret create` and `docker secret rm`.
      # Adds to the metadata of new secrets 'ansible_key', an encrypted hash representation of the data, which is then used
      # in future runs to test if a secret has changed.
      # If 'ansible_key is not present, then a secret will not be updated unless the C(force) option is set.
      # Updates to secrets are performed by removing the secret and creating it again.
      class Docker_secret < Base
        # @return [String, nil] String. The value of the secret. Required when state is C(present).
        attribute :data
        validates :data, type: String

        # @return [Hash, nil] A map of key:value meta data, where both the I(key) and I(value) are expected to be a string.,If new meta data is provided, or existing meta data is modified, the secret will be updated by removing it and creating it again.
        attribute :labels
        validates :labels, type: Hash

        # @return [Symbol, nil] Use with state C(present) to always remove and recreate an existing secret.,If I(true), an existing secret will be replaced, even if it has not changed.
        attribute :force
        validates :force, type: Symbol

        # @return [String] The name of the secret.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Set to C(present), if the secret should exist, and C(absent), if it should not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
