# frozen_string_literal: true
# VALIDATED_CHECKSUM: 7hWaAT6Ug4w7K0vcArWaGB5L9ovbrp7/MQ3UaimnsUs=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/extras/system/firewalld'

module Ansible
  module Ruby
    module Modules
      class Firewalld
        remove_existing_validations :permanent
        validates :permanent, inclusion: { :in => [true, false], :message => "%{value} needs to be true, false" }, allow_nil: true
      end
    end
  end
end
