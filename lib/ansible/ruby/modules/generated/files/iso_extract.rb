# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module mounts an iso image in a temporary directory and extracts files from there to a given destination.
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
      end
    end
  end
end
