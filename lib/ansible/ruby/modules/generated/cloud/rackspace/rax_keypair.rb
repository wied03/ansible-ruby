# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a keypair for use with Rackspace Cloud Servers
      class Rax_keypair < Base
        # @return [String] Name of keypair
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Public Key string to upload. Can be a file path or string
        attribute :public_key

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
