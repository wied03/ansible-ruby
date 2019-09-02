# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove ssh keys.
      class Vultr_ssh_key < Base
        # @return [String] Name of the ssh key.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] SSH public key.,Required if C(state=present).
        attribute :ssh_key
        validates :ssh_key, type: String

        # @return [:present, :absent, nil] State of the ssh key.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
