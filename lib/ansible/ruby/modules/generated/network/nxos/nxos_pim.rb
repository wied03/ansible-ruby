# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages configuration of a Protocol Independent Multicast (PIM) instance.
      class Nxos_pim < Base
        # @return [String] Configure group ranges for Source Specific Multicast (SSM). Valid values are multicast addresses or the keyword C(none) or keyword C(default). C(none) removes all SSM group ranges. C(default) will set ssm_range to the default multicast address. If you set multicast address, please ensure that it is not the same as the C(default), otherwise use the C(default) option.
        attribute :ssm_range
        validates :ssm_range, presence: true, type: String
      end
    end
  end
end
