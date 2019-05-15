# frozen_string_literal: true

# VALIDATED_CHECKSUM: NIc3KnEPaXW8FMNNnfCnUnLGB9YCa8BY4wqoiK6xRDg=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/ec2_ami'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Ec2_ami
        include Helpers::Aws

        remove_existing_validations :state
        validates :state, inclusion: { in: %i[present absent], message: '%{value} needs to be :present, :absent' }, allow_nil: true
      end
    end
  end
end
