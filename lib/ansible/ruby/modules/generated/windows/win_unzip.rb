# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Unzips compressed files and archives.
      # Supports .zip files natively.
      # Supports other formats supported by the Powershell Community Extensions (PSCX) module (basically everything 7zip supports).
      # For non-Windows targets, use the M(unarchive) module instead.
      class Win_unzip < Base
        # @return [String] File to be unzipped (provide absolute path).
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Destination of zip file (provide absolute path of directory). If it does not exist, the directory will be created.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] Remove the zip file, after unzipping.
        attribute :delete_archive
        validates :delete_archive, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Recursively expand zipped files within the src file.,Setting to a value of C(yes) requires the PSCX module to be installed.
        attribute :recurse
        validates :recurse, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] If this file or directory exists the specified src will not be extracted.
        attribute :creates
        validates :creates, type: String
      end
    end
  end
end
