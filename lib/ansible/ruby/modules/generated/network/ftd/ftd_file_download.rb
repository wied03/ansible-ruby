# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Downloads files from Cisco FTD devices including pending changes, disk files, certificates, troubleshoot reports, and backups.
      class Ftd_file_download < Base
        # @return [String] The name of the operation to execute.,Only operations that return a file can be used in this module.
        attribute :operation
        validates :operation, presence: true, type: String

        # @return [Hash, nil] Key-value pairs that should be sent as path parameters in a REST API call.
        attribute :path_params
        validates :path_params, type: Hash

        # @return [String] Absolute path of where to download the file to.,If destination is a directory, the module uses a filename from 'Content-Disposition' header specified by the server.
        attribute :destination
        validates :destination, presence: true, type: String
      end
    end
  end
end
