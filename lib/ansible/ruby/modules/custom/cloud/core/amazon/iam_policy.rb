# frozen_string_literal: true

# VALIDATED_CHECKSUM: 0q0k3jl40Ssgb5i3snikBFDpfpg3pXSW1AykDzt4qZk=

# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/iam_policy'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Iam_policy
        include Helpers::Aws
      end
    end
  end
end
