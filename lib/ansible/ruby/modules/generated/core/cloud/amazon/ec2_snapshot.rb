# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # creates an EC2 snapshot from an existing EBS volume
      class Ec2_snapshot < Base
        # @return [String, nil] volume from which to take the snapshot
        attribute :volume_id
        validates :volume_id, type: String

        # @return [String, nil] description to be applied to the snapshot
        attribute :description
        validates :description, type: String

        # @return [String, nil] instance that has the required volume to snapshot mounted
        attribute :instance_id
        validates :instance_id, type: String

        # @return [String, nil] device name of a mounted volume to be snapshotted
        attribute :device_name
        validates :device_name, type: String

        # @return [Hash, nil] a hash/dictionary of tags to add to the snapshot
        attribute :snapshot_tags
        validates :snapshot_tags, type: Hash

        # @return [Boolean, nil] wait for the snapshot to be ready
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds,specify 0 to wait forever
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [:absent, :present, nil] whether to add or create a snapshot
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] snapshot id to remove
        attribute :snapshot_id
        validates :snapshot_id, type: String

        # @return [Integer, nil] If the volume's most recent snapshot has started less than `last_snapshot_min_age' minutes ago, a new snapshot will not be created.
        attribute :last_snapshot_min_age
        validates :last_snapshot_min_age, type: Integer
      end
    end
  end
end
