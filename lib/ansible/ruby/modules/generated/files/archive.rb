# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Packs an archive. It is the opposite of M(unarchive). By default, it assumes the compression source exists on the target. It will not copy the source file from the local system to the target before archiving. Source files can be deleted after archival by specifying I(remove=True).
      class Archive < Base
        # @return [Array<String>, String] Remote absolute path, glob, or list of paths or globs for the file or files to compress or archive.
        attribute :path
        validates :path, presence: true, type: TypeGeneric.new(String)

        # @return [:bz2, :gz, :tar, :xz, :zip, nil] The type of compression to use.,Support for xz was added in version 2.5.
        attribute :format
        validates :format, inclusion: {:in=>[:bz2, :gz, :tar, :xz, :zip], :message=>"%{value} needs to be :bz2, :gz, :tar, :xz, :zip"}, allow_nil: true

        # @return [String, nil] The file name of the destination archive. This is required when C(path) refers to multiple files by either specifying a glob, a directory or multiple paths in a list.
        attribute :dest
        validates :dest, type: String

        # @return [Array<String>, String, nil] Remote absolute path, glob, or list of paths or globs for the file or files to exclude from the archive
        attribute :exclude_path
        validates :exclude_path, type: TypeGeneric.new(String)

        # @return [String, nil] Remove any added source files and trees after adding to archive.
        attribute :remove
        validates :remove, type: String
      end
    end
  end
end
