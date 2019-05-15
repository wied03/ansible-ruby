# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages filesystems on Pure Storage FlashBlade.
      class Purefb_fs < Base
        # @return [String] Filesystem Name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Create, delete or modifies a filesystem.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Define whether to eradicate the filesystem on delete or leave in trash.
        attribute :eradicate
        validates :eradicate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Volume size in M, G, T or P units. See examples.
        attribute :size
        validates :size, type: String

        # @return [Boolean, nil] Define whether to NFS protocol is enabled for the filesystem.
        attribute :nfs
        validates :nfs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] Define the NFS rules in operation.
        attribute :nfs_rules
        validates :nfs_rules, type: TypeGeneric.new(String)

        # @return [Boolean, nil] Define whether to SMB protocol is enabled for the filesystem.
        attribute :smb
        validates :smb, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Define whether to HTTP/HTTPS protocol is enabled for the filesystem.
        attribute :http
        validates :http, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Define whether a snapshot directory is enabled for the filesystem.
        attribute :snapshot
        validates :snapshot, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Define whether the fast remove directory is enabled for the filesystem.
        attribute :fastremove
        validates :fastremove, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
