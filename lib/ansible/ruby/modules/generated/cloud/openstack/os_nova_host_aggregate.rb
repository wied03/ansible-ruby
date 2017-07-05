# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or delete OpenStack host aggregates. If a aggregate with the supplied name already exists, it will be updated with the new name, new availability zone, new metadata and new list of hosts.
      class Os_nova_host_aggregate < Base
        # @return [String] Name of the aggregate.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Hash, nil] Metadata dict.
        attribute :metadata
        validates :metadata, type: Hash

        # @return [Object, nil] Availability zone to create aggregate into.
        attribute :availability_zone

        # @return [Array<String>, String, nil] List of hosts to set for an aggregate.
        attribute :hosts
        validates :hosts, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
