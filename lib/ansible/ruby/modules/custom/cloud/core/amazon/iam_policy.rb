# frozen_string_literal: true
# VALIDATED_CHECKSUM: uXTQHVrw8/ioo0GdmuhpuxtTefuzwwITrFupi/yVYjY=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/cloud/amazon/iam_policy'
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
