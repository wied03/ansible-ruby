# frozen_string_literal: true
# VALIDATED_CHECKSUM: b9SyuShnH4Nsctr+28jLAQAU3YMezOzYm21Gs6kMQ4I=

# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/ec2_group'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Ec2_group
        include Helpers::Aws

        remove_existing_validations :vpc_id
        validates :vpc_id, type: String
        remove_existing_validations :purge_rules
        remove_existing_validations :purge_rules_egress
        validates :purge_rules, inclusion: { in: [true, false], message: '%{value} needs to be true, false' }, allow_nil: true
        validates :purge_rules_egress, inclusion: { in: [true, false], message: '%{value} needs to be true, false' }, allow_nil: true
      end
    end
  end
end
