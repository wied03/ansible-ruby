# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV virtual machine snapshots.
      class Ovirt_snapshot_facts < Base
        # @return [String] Name of the VM with snapshot.
        attribute :vm
        validates :vm, presence: true, type: String

        # @return [String, nil] Description of the snapshot, can be used as glob expression.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Id of the snapshot we want to retrieve facts about.
        attribute :snapshot_id
      end
    end
  end
end
