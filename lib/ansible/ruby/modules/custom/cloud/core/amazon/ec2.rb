# frozen_string_literal: true
# VALIDATED_CHECKSUM: +zoC6xfP3P0pH+g9F+NpE5if8g9sR3WfLHxPSovDAR8=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/ec2'

module Ansible
  module Ruby
    module Modules
      class Ec2
        remove_existing_validations :count_tag
        validates :count_tag, type: Hash
        remove_existing_validations :ebs_optimized
        validates :ebs_optimized, inclusion: { in: [true, false], message: '%{value} needs to be true, false' }, allow_nil: true
        attribute :instance_profile_name
        validates :instance_profile_name, type: String
        # TODO: Validation should not kick in if jinja/variables are being used
        remove_existing_validations :exact_count
      end
    end
  end
end
