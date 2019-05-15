# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manipulates files privileges using the Linux capabilities(7) system.
      class Capabilities < Base
        # @return [String] Specifies the path to the file to be managed.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] Desired capability to set (with operator and flags, if state is C(present)) or remove (if state is C(absent))
        attribute :capability
        validates :capability, presence: true, type: String

        # @return [:absent, :present, nil] Whether the entry should be present or absent in the file's capabilities.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
