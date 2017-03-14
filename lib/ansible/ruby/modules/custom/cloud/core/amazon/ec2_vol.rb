# frozen_string_literal: true
# VALIDATED_CHECKSUM: 58SVU8dpiPAwTHly19Bo9PMBQL6UkwGryGKS/+20ij4=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/cloud/amazon/ec2_vol'
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
