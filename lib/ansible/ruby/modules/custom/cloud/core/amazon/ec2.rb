# frozen_string_literal: true

# VALIDATED_CHECKSUM: 5sO9ygvKZkn0CIFQUXJiy8A7kic6cpw7YuuvnQFuNbE=

# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/ec2'

module Ansible
  module Ruby
    module Modules
      class Ec2
        remove_existing_validations :count_tag
        validates :count_tag, type: Hash
        remove_existing_validations :ebs_optimized
        validates :ebs_optimized, expression_inclusion: { in: [true, false], message: '%{value} needs to be true, false' }, allow_nil: true
        attribute :instance_profile_name
        validates :instance_profile_name, type: String
      end
    end
  end
end
