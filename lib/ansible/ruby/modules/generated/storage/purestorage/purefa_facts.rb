# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collect facts information from a Pure Storage Flasharray running the Purity//FA operating system. By default, the module will collect basic fact information including hosts, host groups, protection groups and volume counts. Additional fact information can be collected based on the configured set of arguements.
      class Purefa_facts < Base
        # @return [String, nil] When supplied, this argument will define the facts to be collected. Possible values for this include all, minimum, config, performance, capacity, network, subnet, interfaces, hgroups, pgroups, hosts, volumes and snapshots.
        attribute :gather_subset
        validates :gather_subset, type: String
      end
    end
  end
end
