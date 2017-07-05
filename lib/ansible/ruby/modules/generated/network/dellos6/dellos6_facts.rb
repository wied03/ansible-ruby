# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collects a base set of device facts from a remote device that is running OS6.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module always collects a base set of facts from the device and can enable or disable collection of additional facts.
      class Dellos6_facts < Base
        # @return [String, nil] When specified, this argument restricts the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  You can specify a list of values to include a larger subset.  You can also use values with an initial M(!) to specify that a specific subset should not be collected.
        attribute :gather_subset
        validates :gather_subset, type: String
      end
    end
  end
end
