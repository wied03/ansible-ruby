# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_cbs < Base
        # @return [Object] Description to give the volume being created
        attribute :description

        # @return [Object] image to use for bootable volumes. Can be an C(id), C(human_id) or C(name). This option requires C(pyrax>=1.9.3)
        attribute :image

        # @return [Object] A hash of metadata to associate with the volume
        attribute :meta

        # @return [String] Name to give the volume being created
        attribute :name
        validates :name, presence: true, type: String

        # @return [Fixnum] Size of the volume to create in Gigabytes
        attribute :size
        validates :size, presence: true, type: Fixnum

        # @return [Object] The id of the snapshot to create the volume from
        attribute :snapshot_id

        # @return [String] Indicate desired state of the resource
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Type of the volume being created
        attribute :volume_type
        validates :volume_type, presence: true, inclusion: {:in=>[:SATA, :SSD], :message=>"%{value} needs to be :SATA, :SSD"}

        # @return [String] wait for the volume to be in state 'available' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum
      end
    end
  end
end