# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage a maintenance-mode or normal-mode profile with configuration commands that can be applied during graceful removal or graceful insertion.
      class Nxos_gir_profile_management < Base
        # @return [Array<String>, String, nil] List of commands to be included into the profile.
        attribute :commands
        validates :commands, type: TypeGeneric.new(String)

        # @return [:maintenance, :normal] Configure the profile as Maintenance or Normal mode.
        attribute :mode
        validates :mode, presence: true, inclusion: {:in=>[:maintenance, :normal], :message=>"%{value} needs to be :maintenance, :normal"}

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Specify to retrieve or not the complete running configuration for module operations.
        attribute :include_defaults
        validates :include_defaults, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Specify the configuration string to be used for module operations.
        attribute :config
      end
    end
  end
end
