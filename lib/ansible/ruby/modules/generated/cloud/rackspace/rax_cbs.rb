# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manipulate Rackspace Cloud Block Storage Volumes
      class Rax_cbs < Base
        # @return [Object, nil] Description to give the volume being created
        attribute :description

        # @return [Object, nil] image to use for bootable volumes. Can be an C(id), C(human_id) or C(name). This option requires C(pyrax>=1.9.3)
        attribute :image

        # @return [Object, nil] A hash of metadata to associate with the volume
        attribute :meta

        # @return [String] Name to give the volume being created
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] Size of the volume to create in Gigabytes
        attribute :size
        validates :size, presence: true, type: Integer

        # @return [Object, nil] The id of the snapshot to create the volume from
        attribute :snapshot_id

        # @return [:present, :absent] Indicate desired state of the resource
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:SATA, :SSD] Type of the volume being created
        attribute :volume_type
        validates :volume_type, presence: true, expression_inclusion: {:in=>[:SATA, :SSD], :message=>"%{value} needs to be :SATA, :SSD"}

        # @return [:yes, :no, nil] wait for the volume to be in state 'available' before returning
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
