# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/delete DigitalOcean SSH keys.
      class Digital_ocean_sshkey < Base
        # @return [:present, :absent, nil] Indicate desired state of the target.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] This is a unique identifier for the SSH key used to delete a key
        attribute :fingerprint
        validates :fingerprint, type: String

        # @return [String, nil] The name for the SSH key
        attribute :name
        validates :name, type: String

        # @return [String, nil] The Public SSH key to add.
        attribute :ssh_pub_key
        validates :ssh_pub_key, type: String

        # @return [String] DigitalOcean OAuth token.
        attribute :oauth_token
        validates :oauth_token, presence: true, type: String
      end
    end
  end
end
