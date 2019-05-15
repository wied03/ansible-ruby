# frozen_string_literal: true

# VALIDATED_CHECKSUM: EYdZ9aEFCSg+q5RaNSh+w+b/Kp5zI1KPHEKPkqmdODs=
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
