# frozen_string_literal: true
# VALIDATED_CHECKSUM: hPB8L/WzeZMO0CYwnI2fUWe2jeWoKQ6UUD6MNeitvlg=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/cloud/amazon/ec2_eip'
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
