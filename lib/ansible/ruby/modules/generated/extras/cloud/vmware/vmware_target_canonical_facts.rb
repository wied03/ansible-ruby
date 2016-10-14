# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Return canonical (NAA) from an ESXi host based on SCSI target ID
      class Vmware_target_canonical_facts < Base
        # @return [String] The target id based on order of scsi device
        attribute :target_id
        validates :target_id, presence: true, type: String
      end
    end
  end
end
