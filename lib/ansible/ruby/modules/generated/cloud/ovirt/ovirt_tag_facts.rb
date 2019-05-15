# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV tags.
      class Ovirt_tag_facts < Base
        # @return [String, nil] Name of the tag which should be listed.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Name of the VM, which tags should be listed.
        attribute :vm
        validates :vm, type: String

        # @return [String, nil] Name of the host, which tags should be listed.
        attribute :host
        validates :host, type: String
      end
    end
  end
end
