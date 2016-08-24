# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_snapshot_facts < Base
        # @return [Object, nil] If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned.
        attribute :snapshot_ids

        # @return [Object, nil] If you specify one or more snapshot owners, only snapshots from the specified owners and for which you have       access are returned.
        attribute :owner_ids

        # @return [Object, nil] If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are       returned.
        attribute :restorable_by_user_ids

        # @return [Object, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See       U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html) for possible filters. Filter       names and values are case sensitive.
        attribute :filters
      end
    end
  end
end
