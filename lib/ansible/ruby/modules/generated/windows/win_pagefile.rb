# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Query current pagefile configuration.
      # Enable/Disable AutomaticManagedPagefile.
      # Create new or override pagefile configuration.
      class Win_pagefile < Base
        # @return [String, nil] The drive of the pagefile.
        attribute :drive
        validates :drive, type: String

        # @return [Integer, nil] The initial size of the pagefile in megabytes.
        attribute :initial_size
        validates :initial_size, type: Integer

        # @return [Integer, nil] The maximum size of the pagefile in megabytes.
        attribute :maximum_size
        validates :maximum_size, type: Integer

        # @return [String, nil] Override the current pagefile on the drive.
        attribute :override
        validates :override, type: String

        # @return [String, nil] Configures current pagefile to be managed by the system.
        attribute :system_managed
        validates :system_managed, type: String

        # @return [TrueClass, FalseClass, nil] Configures AutomaticManagedPagefile for the entire system.
        attribute :automatic
        validates :automatic, type: MultipleTypes.new(TrueClass, FalseClass)

        # @return [String, nil] Remove all pagefiles in the system, not including automatic managed.
        attribute :remove_all
        validates :remove_all, type: String

        # @return [String, nil] Use Test-Path on the drive to make sure the drive is accessible before creating the pagefile.
        attribute :test_path
        validates :test_path, type: String

        # @return [:absent, :present, :query, nil] State of the pagefile.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
