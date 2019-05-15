# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages a basic AIX mksysb (image) of rootvg.
      class Mksysb < Base
        # @return [String, nil] Backup encrypted files.
        attribute :backup_crypt_files
        validates :backup_crypt_files, type: String

        # @return [String, nil] Back up DMAPI filesystem files.
        attribute :backup_dmapi_fs
        validates :backup_dmapi_fs, type: String

        # @return [String, nil] Creates a new MAP files.
        attribute :create_map_files
        validates :create_map_files, type: String

        # @return [String, nil] Excludes files using C(/etc/rootvg.exclude).
        attribute :exclude_files
        validates :exclude_files, type: String

        # @return [String, nil] Excludes WPAR files.
        attribute :exclude_wpar_files
        validates :exclude_wpar_files, type: String

        # @return [String, nil] Backup extended attributes.
        attribute :extended_attrs
        validates :extended_attrs, type: String

        # @return [String] Backup name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Creates a new file data.
        attribute :new_image_data
        validates :new_image_data, type: String

        # @return [String, nil] Exclude files from packing option listed in C(/etc/exclude_packing.rootvg).
        attribute :software_packing
        validates :software_packing, type: String

        # @return [String] Storage path where the mksysb will stored.
        attribute :storage_path
        validates :storage_path, presence: true, type: String

        # @return [String, nil] Creates backup using snapshots.
        attribute :use_snapshot
        validates :use_snapshot, type: String
      end
    end
  end
end
