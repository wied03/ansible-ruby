# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/remove Docker volumes.
      # Performs largely the same function as the "docker volume" CLI subcommand.
      class Docker_volume < Base
        # @return [String] Name of the volume to operate on.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specify the type of volume. Docker provides the C(local) driver, but 3rd party drivers can also be used.
        attribute :driver
        validates :driver, type: String

        # @return [Hash, nil] Dictionary of volume settings. Consult docker docs for valid options and values: U(https://docs.docker.com/engine/reference/commandline/volume_create/#driver-specific-options)
        attribute :driver_options
        validates :driver_options, type: Hash

        # @return [Object, nil] List of labels to set for the volume
        attribute :labels

        # @return [:yes, :no, nil] With state C(present) causes the volume to be deleted and recreated if the volume already exist and the driver, driver options or labels differ. This will cause any data in the existing volume to be lost.
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:absent, :present, nil] C(absent) deletes the volume.,C(present) creates the volume, if it does not already exist.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
