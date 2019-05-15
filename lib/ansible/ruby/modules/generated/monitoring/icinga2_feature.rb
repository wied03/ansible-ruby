# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to enable or disable an Icinga2 feature.
      class Icinga2_feature < Base
        # @return [String] This is the feature name to enable or disable.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] If set to C(present) and feature is disabled, then feature is enabled.,If set to C(present) and feature is already enabled, then nothing is changed.,If set to C(absent) and feature is enabled, then feature is disabled.,If set to C(absent) and feature is already disabled, then nothing is changed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
