# frozen_string_literal: true

# VALIDATED_CHECKSUM: RhqwUulWJitm2NvVAi5LBt2KlaAYFJGYjMdfixvzclM=

# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/ec2_ami'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Ec2_ami
        include Helpers::Aws
      end
    end
  end
end
