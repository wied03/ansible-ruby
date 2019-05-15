# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collects a base set of device facts from a remote device that is running EdgeOS. This module prepends all of the base network fact keys with U(ansible_net_<fact>). The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.
      class Edgeos_facts < Base
        # @return [String, nil] When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all, default, config, and neighbors. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.
        attribute :gather_subset
        validates :gather_subset, type: String
      end
    end
  end
end
