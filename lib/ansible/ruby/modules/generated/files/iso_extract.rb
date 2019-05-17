# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module has two possible ways of operation.
      # If 7zip is installed on the system, this module extracts files from an ISO into a temporary directory and copies files to a given destination, if needed.
      # If the user has mount-capabilities (CAP_SYS_ADMIN on Linux) this module mounts the ISO image to a temporary location, and copies files to a given destination, if needed.
      class Iso_extract < Base
        # @return [String] The ISO image to extract files from.
        attribute :image
        validates :image, presence: true, type: String

        # @return [String] The destination directory to extract files to.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Array<String>, String] A list of files to extract from the image.,Extracting directories does not work.
        attribute :files
        validates :files, presence: true, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] If C(yes), which will replace the remote file when contents are different than the source.,If C(no), the file will only be extracted and copied if the destination does not already exist.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The path to the C(7z) executable to use for extracting files from the ISO.
        attribute :executable
        validates :executable, type: String
      end
    end
  end
end
