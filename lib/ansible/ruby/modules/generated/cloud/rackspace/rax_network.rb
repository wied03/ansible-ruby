# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # creates / deletes a Rackspace Public Cloud isolated network.
      class Rax_network < Base
        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Label (name) to give the network
        attribute :label

        # @return [Object, nil] cidr of the network being created
        attribute :cidr
      end
    end
  end
end
