# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is automatically called by playbooks to gather useful variables about remote hosts that can be used in playbooks. It can also be executed directly by C(/usr/bin/ansible) to check what variables are available to a host. Ansible provides many I(facts) about the system, automatically.
      # This module is also supported for Windows targets.
      class Setup < Base
        # @return [String, nil] if supplied, restrict the additional facts collected to the given subset. Possible values: C(all), C(min), C(hardware), C(network), C(virtual), C(ohai), and C(facter). Can specify a list of values to specify a larger subset. Values can also be used with an initial C(!) to specify that that specific subset should not be collected.  For instance: C(!hardware,!network,!virtual,!ohai,!facter). If C(!all) is specified then only the min subset is collected. To avoid collecting even the min subset, specify C(!all,!min). To collect only specific facts, use C(!all,!min), and specify the particular fact subsets. Use the filter parameter if you do not want to display some collected facts.
        attribute :gather_subset
        validates :gather_subset, type: String

        # @return [Integer, nil] Set the default timeout in seconds for individual fact gathering
        attribute :gather_timeout
        validates :gather_timeout, type: Integer

        # @return [String, nil] if supplied, only return facts that match this shell-style (fnmatch) wildcard.
        attribute :filter
        validates :filter, type: String

        # @return [String, nil] path used for local ansible facts (C(*.fact)) - files in this dir will be run (if executable) and their results be added to C(ansible_local) facts if a file is not executable it is read. Check notes for Windows options. (from 2.1 on) File/results format can be json or ini-format
        attribute :fact_path
        validates :fact_path, type: String
      end
    end
  end
end
