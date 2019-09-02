# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, or update access groups on Element Software Cluster.
      class Na_elementsw_access_group < Base
        # @return [:present, :absent] Whether the specified access group should exist or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, Integer, nil] ID or Name of the access group to modify or delete.,Required for delete and modify operations.
        attribute :src_access_group_id
        validates :src_access_group_id, type: MultipleTypes.new(String, Integer)

        # @return [String, nil] New name for the access group for create and modify operation.,Required for create operation.
        attribute :new_name
        validates :new_name, type: String

        # @return [Object, nil] List of initiators to include in the access group. If unspecified, the access group will start out without configured initiators.
        attribute :initiators

        # @return [Array<Integer>, Integer, nil] List of volumes to initially include in the volume access group. If unspecified, the access group will start without any volumes.
        attribute :volumes
        validates :volumes, type: TypeGeneric.new(Integer)

        # @return [Object, nil] The ID of the Element SW Software Cluster Virtual Network ID to associate the access group with.
        attribute :virtual_network_id

        # @return [Object, nil] The ID of the VLAN Virtual Network Tag to associate the access group with.
        attribute :virtual_network_tags

        # @return [Hash, nil] List of Name/Value pairs in JSON object format.
        attribute :attributes
        validates :attributes, type: Hash
      end
    end
  end
end
