# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_target_canonical_facts < Base
        # @return [Object] The target id based on order of scsi device
        attribute :target_id
        validates :target_id, presence: true
      end
    end
  end
end
