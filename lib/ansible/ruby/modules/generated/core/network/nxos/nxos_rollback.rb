# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module offers the ability to set a configuration checkpoint file or rollback to a configuration checkpoint file on Cisco NXOS switches.
      class Nxos_rollback < Base
        # @return [String, nil] Name of checkpoint file to create. Mutually exclusive with rollback_to.
        attribute :checkpoint_file
        validates :checkpoint_file, type: String

        # @return [String, nil] Name of checkpoint file to rollback to. Mutually exclusive with checkpoint_file.
        attribute :rollback_to
        validates :rollback_to, type: String
      end
    end
  end
end
