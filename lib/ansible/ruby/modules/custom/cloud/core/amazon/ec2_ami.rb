# frozen_string_literal: true
# VALIDATED_CHECKSUM: pWZAdaAPyWvGa5iQxJSYAfhg156L6mY5nNH0x3pNcbE=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/cloud/amazon/ec2_ami'
require 'ansible/ruby/modules/helpers/aws'

module Ansible
  module Ruby
    module Modules
      class Ec2_ami
        include Helpers::Aws

        remove_existing_validations :state
        validates :state, inclusion: { in: [:present, :absent], message: '%{value} needs to be :present, :absent' }, allow_nil: true
      end
    end
  end
end
