# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt affinity labels.
      class Ovirt_affinity_labels_facts < Base
        # @return [String, nil] Name of the affinity labels which should be listed.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Name of the VM, which affinity labels should be listed.
        attribute :vm
        validates :vm, type: String

        # @return [String, nil] Name of the host, which affinity labels should be listed.
        attribute :host
        validates :host, type: String
      end
    end
  end
end
