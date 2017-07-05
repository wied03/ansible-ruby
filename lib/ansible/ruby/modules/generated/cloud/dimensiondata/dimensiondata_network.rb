# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, and delete MCP 1.0 & 2.0 networks
      class Dimensiondata_network < Base
        # @return [String] The name of the network domain to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Additional description of the network domain.
        attribute :description

        # @return [:ESSENTIALS, :ADVANCED, nil] The service plan, either “ESSENTIALS” or “ADVANCED”.,MCP 2.0 Only.
        attribute :service_plan
        validates :service_plan, inclusion: {:in=>[:ESSENTIALS, :ADVANCED], :message=>"%{value} needs to be :ESSENTIALS, :ADVANCED"}, allow_nil: true

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
