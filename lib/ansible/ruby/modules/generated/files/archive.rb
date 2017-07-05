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

        # @return [:gz, :bz2, :zip, nil] The type of compression to use.
        attribute :format
        validates :format, inclusion: {:in=>[:gz, :bz2, :zip], :message=>"%{value} needs to be :gz, :bz2, :zip"}, allow_nil: true

        # @return [String, nil] The file name of the destination archive. This is required when C(path) refers to multiple files by either specifying a glob, a directory or multiple paths in a list.
        attribute :dest
        validates :dest, type: String

        # @return [Boolean, nil] Remove any added source files and trees after adding to archive.
        attribute :remove
        validates :remove, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
