# frozen_string_literal: true
# VALIDATED_CHECKSUM: 7rxfYrshg0fkYB0VaKmxgbRGpNJLw5ESaJPp2c7Yjv4=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/cloud/amazon/iam'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Iam
        include Helpers::Aws
      end
    end
  end
end
