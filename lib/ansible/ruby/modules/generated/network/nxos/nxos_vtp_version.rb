# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VTP version configuration.
      class Nxos_vtp_version < Base
        # @return [1, 2] VTP version number.
        attribute :version
        validates :version, presence: true, expression_inclusion: {:in=>[1, 2], :message=>"%{value} needs to be 1, 2"}
      end
    end
  end
end
