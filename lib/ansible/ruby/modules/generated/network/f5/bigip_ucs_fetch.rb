# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used for fetching UCS files from remote machines and storing them locally in a file tree, organized by hostname. Note that this module is written to transfer UCS files that might not be present, so a missing remote UCS won't be an error unless fail_on_missing is set to 'yes'.
      class Bigip_ucs_fetch < Base
        # @return [Symbol, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, type: Symbol

        # @return [Boolean, nil] Creates the UCS based on the value of C(src) if the file does not already exist on the remote system.
        attribute :create_on_missing
        validates :create_on_missing, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] A directory to save the UCS file into.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Object, nil] Password to use to encrypt the UCS file if desired
        attribute :encryption_password

        # @return [Symbol, nil] Make the module fail if the UCS file on the remote system is missing.
        attribute :fail_on_missing
        validates :fail_on_missing, type: Symbol

        # @return [Boolean, nil] If C(no), the file will only be transferred if the destination does not exist.
        attribute :force
        validates :force, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The name of the UCS file to create on the remote server for downloading
        attribute :src
        validates :src, type: String
      end
    end
  end
end
