# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Assign all or part of disks to nodes.
      class Na_ontap_disks < Base
        # @return [String] It specifies the node to assign all visible unowned disks.
        attribute :node
        validates :node, presence: true, type: String
      end
    end
  end
end
