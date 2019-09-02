# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Load or unload kernel modules.
      class Modprobe < Base
        # @return [String] Name of kernel module to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Whether the module should be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Modules parameters.
        attribute :params
        validates :params, type: String
      end
    end
  end
end
