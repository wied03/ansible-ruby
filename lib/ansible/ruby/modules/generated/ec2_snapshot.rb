# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_snapshot < Base
        # @return [String] volume from which to take the snapshot
        attribute :volume_id
        validates :volume_id, type: String

        # @return [String] description to be applied to the snapshot
        attribute :description
        validates :description, type: String

        # @return [String] instance that has the required volume to snapshot mounted
        attribute :instance_id
        validates :instance_id, type: String

        # @return [String] device name of a mounted volume to be snapshotted
        attribute :device_name
        validates :device_name, type: String

        # @return [Hash] a hash/dictionary of tags to add to the snapshot
        attribute :snapshot_tags
        validates :snapshot_tags, type: Hash

        # @return [TrueClass] wait for the snapshot to be ready
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds,specify 0 to wait forever
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [String] whether to add or create a snapshot
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] snapshot id to remove
        attribute :snapshot_id
        validates :snapshot_id, type: String

        # @return [Fixnum] If the volume's most recent snapshot has started less than `last_snapshot_min_age' minutes ago, a new snapshot will not be created.
        attribute :last_snapshot_min_age
        validates :last_snapshot_min_age, type: Fixnum
      end
    end
  end
end
