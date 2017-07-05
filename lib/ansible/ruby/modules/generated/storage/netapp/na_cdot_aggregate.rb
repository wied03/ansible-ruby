# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy aggregates on NetApp cDOT.
      class Na_cdot_aggregate < Base
        # @return [:present, :absent] Whether the specified aggregate should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the aggregate to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] Number of disks to place into the aggregate, including parity disks.,The disks in this newly-created aggregate come from the spare disk pool.,The smallest disks in this pool join the aggregate first, unless the C(disk-size) argument is provided.,Either C(disk-count) or C(disks) must be supplied. Range [0..2^31-1].,Required when C(state=present).
        attribute :disk_count
        validates :disk_count, type: Integer
      end
    end
  end
end
