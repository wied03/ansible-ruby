# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Used to enable or disable features in Chocolatey.
      class Win_chocolatey_feature < Base
        # @return [String] The name of the feature to manage.,Run C(choco.exe feature list) to get a list of features that can be managed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:disabled, :enabled, nil] When C(disabled) then the feature will be disabled.,When C(enabled) then the feature will be enabled.
        attribute :state
        validates :state, inclusion: {:in=>[:disabled, :enabled], :message=>"%{value} needs to be :disabled, :enabled"}, allow_nil: true
      end
    end
  end
end
