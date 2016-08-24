# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vca_fw < Base
        # @return [Boolean] A list of firewall rules to be added to the gateway, Please see examples on valid entries
        attribute :fw_rules
        validates :fw_rules, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}
      end
    end
  end
end
