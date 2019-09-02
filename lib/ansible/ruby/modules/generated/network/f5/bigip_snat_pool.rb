# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage SNAT pools on a BIG-IP.
      class Bigip_snat_pool < Base
        # @return [Array<String>, String, nil] List of members to put in the SNAT pool. When a C(state) of present is provided, this parameter is required. Otherwise, it is optional.
        attribute :members
        validates :members, type: TypeGeneric.new(String)

        # @return [String] The name of the SNAT pool.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the SNAT pool should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
