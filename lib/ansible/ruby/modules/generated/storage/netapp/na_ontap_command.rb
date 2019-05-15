# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Run system-cli commands on ONTAP
      class Na_ontap_command < Base
        # @return [Array<String>, String, nil] a comma separated list containing the command and arguments.
        attribute :command
        validates :command, type: TypeGeneric.new(String)
      end
    end
  end
end
