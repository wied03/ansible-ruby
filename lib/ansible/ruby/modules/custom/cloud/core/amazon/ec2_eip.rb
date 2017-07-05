# frozen_string_literal: true
# VALIDATED_CHECKSUM: f4z94YNeJ6UZL489OHecmCMToMRCjXjvD37Ax27o8KE=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/ec2_eip'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Ec2_eip
        include Helpers::Aws
      end
    end
  end
end
