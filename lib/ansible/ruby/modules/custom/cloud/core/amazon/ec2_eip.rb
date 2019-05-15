# frozen_string_literal: true
# VALIDATED_CHECKSUM: 2w2rBLm8tWbWKOCSAltuM46llIYq5VzX1+HDcjT8IYo=
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
