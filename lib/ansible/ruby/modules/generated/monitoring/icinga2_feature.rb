# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enable or disable an Icinga2 feature
      class Icinga2_feature < Base
        # @return [String] This is the feature name to enable or disable.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Apply feature state.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
