# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete volume snapshot policies.
      class Cs_snapshot_policy < Base
        # @return [String] Name of the volume.
        attribute :volume
        validates :volume, presence: true, type: String

        # @return [:hourly, :daily, :weekly, :monthly, nil] Interval of the snapshot.
        attribute :interval_type
        validates :interval_type, inclusion: {:in=>[:hourly, :daily, :weekly, :monthly], :message=>"%{value} needs to be :hourly, :daily, :weekly, :monthly"}, allow_nil: true

        # @return [Integer, nil] Max number of snapshots.
        attribute :max_snaps
        validates :max_snaps, type: Integer

        # @return [String, nil] Time the snapshot is scheduled. Required if C(state=present).,Format for C(interval_type=HOURLY): C(MM),Format for C(interval_type=DAILY): C(MM:HH),Format for C(interval_type=WEEKLY): C(MM:HH:DD (1-7)),Format for C(interval_type=MONTHLY): C(MM:HH:DD (1-28))
        attribute :schedule
        validates :schedule, type: String

        # @return [String, nil] Specifies a timezone for this command.
        attribute :time_zone
        validates :time_zone, type: String

        # @return [:present, :absent, nil] State of the snapshot policy.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the volume is related to.
        attribute :domain

        # @return [Object, nil] Account the volume is related to.
        attribute :account

        # @return [Object, nil] Name of the project the volume is related to.
        attribute :project
      end
    end
  end
end
