# frozen_string_literal: true

# VALIDATED_CHECKSUM: C8DyCd7zAmwA7IZ1Gu34oufADZJklKy5U4BILtjpJNA=

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
