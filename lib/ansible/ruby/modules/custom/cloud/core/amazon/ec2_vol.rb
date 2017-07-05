# frozen_string_literal: true
# VALIDATED_CHECKSUM: ydsgXqHBAUFka5OcjpuFtKA4rW7EIZHgqAqALug4xWo=
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
