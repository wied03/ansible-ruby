# frozen_string_literal: true
# VALIDATED_CHECKSUM: xEh4E7Bkuv7RTNF/zUuroIZvHwiejbHuToK72pHQ8R8=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/system/firewalld'

module Ansible
  module Ruby
    module Modules
      class Firewalld
        remove_existing_validations :permanent
        validates :permanent, inclusion: { in: [true, false], message: '%{value} needs to be true, false' }, allow_nil: true
      end
    end
  end
end
