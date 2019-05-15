# frozen_string_literal: true
# VALIDATED_CHECKSUM: jShIlmk7bw80Bxlb9AHqcadJGJnCdG9cYbDzNdfUHW0=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/ec2_vol'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Ec2_vol
        include Helpers::Aws
      end
    end
  end
end
