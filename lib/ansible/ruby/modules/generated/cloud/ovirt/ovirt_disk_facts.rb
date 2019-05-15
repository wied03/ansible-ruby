# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV disks.
      class Ovirt_disk_facts < Base
        # @return [String, nil] Search term which is accepted by oVirt/RHV search backend.,For example to search Disk X from storage Y use following pattern: name=X and storage.name=Y
        attribute :pattern
        validates :pattern, type: String
      end
    end
  end
end
