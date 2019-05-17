# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages a basic AIX mksysb (image) of rootvg.
      class Mksysb < Base
        # @return [:yes, :no, nil] Backup encrypted files.
        attribute :backup_crypt_files
        validates :backup_crypt_files, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Back up DMAPI filesystem files.
        attribute :backup_dmapi_fs
        validates :backup_dmapi_fs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Creates a new MAP files.
        attribute :create_map_files
        validates :create_map_files, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Excludes files using C(/etc/rootvg.exclude).
        attribute :exclude_files
        validates :exclude_files, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Excludes WPAR files.
        attribute :exclude_wpar_files
        validates :exclude_wpar_files, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Backup extended attributes.
        attribute :extended_attrs
        validates :extended_attrs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Backup name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:yes, :no, nil] Creates a new file data.
        attribute :new_image_data
        validates :new_image_data, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Exclude files from packing option listed in C(/etc/exclude_packing.rootvg).
        attribute :software_packing
        validates :software_packing, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Storage path where the mksysb will stored.
        attribute :storage_path
        validates :storage_path, presence: true, type: String

        # @return [:yes, :no, nil] Creates backup using snapshots.
        attribute :use_snapshot
        validates :use_snapshot, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
