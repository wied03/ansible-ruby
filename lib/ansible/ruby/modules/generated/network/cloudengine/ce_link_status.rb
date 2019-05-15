# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get interface link status on HUAWEI CloudEngine switches.
      class Ce_link_status < Base
        # @return [Object] For the interface parameter, you can enter C(all) to display information about all interface, an interface type such as C(40GE) to display information about interfaces of the specified type, or full name of an interface such as C(40GE1/0/22) or C(vlanif10) to display information about the specific interface.
        attribute :interface
        validates :interface, presence: true
      end
    end
  end
end
