# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An Ansible module to Create, Delete and Restore server snapshots in CenturyLink Cloud.
      class Clc_server_snapshot < Base
        # @return [Array<String>, String] The list of CLC server Ids.
        attribute :server_ids
        validates :server_ids, presence: true, type: TypeGeneric.new(String)

        # @return [Integer, nil] The number of days to keep the server snapshot before it expires.
        attribute :expiration_days
        validates :expiration_days, type: Integer

        # @return [:present, :absent, :restore, nil] The state to insure that the provided resources are in.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :restore], :message=>"%{value} needs to be :present, :absent, :restore"}, allow_nil: true

        # @return [Boolean, nil] Whether to wait for the provisioning tasks to finish before returning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
