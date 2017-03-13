# frozen_string_literal: true
# VALIDATED_CHECKSUM: blMzhx6c6ZPwDsLuc9GJuEF9avbbimbZQ0qCYEdlQUg=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/cloud/amazon/ec2_asg'

module Ansible
  module Ruby
    module Modules
      class Ec2_asg
        remove_existing_validations :termination_policies
        # @return [:OldestInstance, :NewestInstance, :OldestLaunchConfiguration, :ClosestToNextInstanceHour, :Default, nil] An ordered list of criteria used for selecting instances to be removed from the Auto Scaling group when reducing capacity.,For 'Default', when used to create a new autoscaling group, the "Default" value is used. When used to change an existent autoscaling group, the current termination policies are mantained
        attribute :termination_policies
        validates :termination_policies, type: Array
      end
    end
  end
end
