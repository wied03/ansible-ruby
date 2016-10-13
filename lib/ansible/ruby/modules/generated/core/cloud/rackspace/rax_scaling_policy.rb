# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manipulate Rackspace Cloud Autoscale Scaling Policy
      class Rax_scaling_policy < Base
        # @return [Object, nil] The UTC time when this policy will be executed. The time must be formatted according to C(yyyy-MM-dd'T'HH:mm:ss.SSS) such as C(2013-05-19T08:07:08Z)
        attribute :at

        # @return [Object, nil] The change, either as a number of servers or as a percentage, to make in the scaling group. If this is a percentage, you must set I(is_percent) to C(true) also.
        attribute :change

        # @return [Object, nil] The time when the policy will be executed, as a cron entry. For example, if this is parameter is set to C(1 0 * * *)
        attribute :cron

        # @return [Object, nil] The period of time, in seconds, that must pass before any scaling can occur after the previous scaling. Must be an integer between 0 and 86400 (24 hrs).
        attribute :cooldown

        # @return [Object, nil] The desired server capacity of the scaling the group; that is, how many servers should be in the scaling group.
        attribute :desired_capacity

        # @return [Boolean, nil] Whether the value in I(change) is a percent value
        attribute :is_percent
        validates :is_percent, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object] Name to give the policy
        attribute :name
        validates :name, presence: true

        # @return [:webhook, :schedule] The type of policy that will be executed for the current release.
        attribute :policy_type
        validates :policy_type, presence: true, inclusion: {:in=>[:webhook, :schedule], :message=>"%{value} needs to be :webhook, :schedule"}

        # @return [Object] Name of the scaling group that this policy will be added to
        attribute :scaling_group
        validates :scaling_group, presence: true

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
