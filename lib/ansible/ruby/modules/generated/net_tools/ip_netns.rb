# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete network namespaces using the ip command.
      class Ip_netns < Base
        # @return [String, nil] Name of the namespace
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, nil] Whether the namespace should exist
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
