# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages configuration of a Protocol Independent Multicast (PIM) instance.
      class Nxos_pim < Base
        # @return [String] Configure group ranges for Source Specific Multicast (SSM). Valid values are multicast addresses or the keyword 'none'.
        attribute :ssm_range
        validates :ssm_range, presence: true, type: String
      end
    end
  end
end
