# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, or update volume access groups on SolidFire
      class Sf_volume_access_group_manager < Base
        # @return [:present, :absent] Whether the specified volume access group should exist or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Name of the volume access group. It is not required to be unique, but recommended.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] List of initiators to include in the volume access group. If unspecified, the access group will start out without configured initiators.
        attribute :initiators

        # @return [Array<Integer>, Integer, nil] List of volumes to initially include in the volume access group. If unspecified, the access group will start without any volumes.
        attribute :volumes
        validates :volumes, type: TypeGeneric.new(Integer)

        # @return [Object, nil] The ID of the SolidFire Virtual Network ID to associate the volume access group with.
        attribute :virtual_network_id

        # @return [Object, nil] The ID of the VLAN Virtual Network Tag to associate the volume access group with.
        attribute :virtual_network_tags

        # @return [Hash, nil] List of Name/Value pairs in JSON object format.
        attribute :attributes
        validates :attributes, type: Hash

        # @return [Integer, nil] The ID of the volume access group to modify or delete.
        attribute :volume_access_group_id
        validates :volume_access_group_id, type: Integer
      end
    end
  end
end
