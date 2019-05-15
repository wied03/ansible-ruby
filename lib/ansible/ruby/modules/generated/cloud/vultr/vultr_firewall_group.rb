# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove firewall groups.
      class Vultr_firewall_group < Base
        # @return [String] Name of the firewall group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] State of the firewall group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
