# frozen_string_literal: true

# VALIDATED_CHECKSUM: PgorX84TOr33FZPvvP+HbMuVbykJ25rKDOAd+T4dCfc=

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
