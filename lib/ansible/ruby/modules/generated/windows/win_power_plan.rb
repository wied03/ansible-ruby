# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will change the power plan of a Windows system to the defined string.
      # Windows defaults to C(balanced) which will cause CPU throttling. In some cases it can be preferable to change the mode to C(high performance) to increase CPU performance.
      class Win_power_plan < Base
        # @return [String] String value that indicates the desired power plan. The power plan must already be present on the system. Commonly there will be options for C(balanced) and C(high performance).
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
