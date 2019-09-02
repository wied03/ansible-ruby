# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages SSH keys on Scaleway account U(https://developer.scaleway.com)
      class Scaleway_sshkey < Base
        # @return [:present, :absent, nil] Indicate desired state of the SSH key.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The public SSH key as a string to add.
        attribute :ssh_pub_key
        validates :ssh_pub_key, presence: true, type: String

        # @return [String, nil] Scaleway API URL
        attribute :api_url
        validates :api_url, type: String
      end
    end
  end
end
