# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, deletes or modifies NFS exports on Infinibox.
      class Infini_export < Base
        # @return [String] Export name. Should always start with C(/). (ex. name=/data)
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Creates/Modifies export when present and removes when absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Internal path of the export.
        attribute :inner_path
        validates :inner_path, type: String

        # @return [Array<String>, String, nil] List of dictionaries with client entries. See examples. Check infini_export_client module to modify individual NFS client entries for export.
        attribute :client_list
        validates :client_list, type: TypeGeneric.new(String)

        # @return [String] Name of exported file system.
        attribute :filesystem
        validates :filesystem, presence: true, type: String
      end
    end
  end
end
