# frozen_string_literal: true
# VALIDATED_CHECKSUM: 3jcypAyetvkbt8rHvdpX2XYWX7bDZ9el6bmdOiPHcos=

# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/cloud/amazon/ec2_ami_copy'

module Ansible
  module Ruby
    module Modules
      class Ec2_ami_copy
        remove_existing_validations :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
