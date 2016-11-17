# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Reboot a network device.
      class Nxos_reboot < Base
        # @return [Boolean, nil] Safeguard boolean. Set to true if you're sure you want to reboot.
        attribute :confirm
        validates :confirm, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
