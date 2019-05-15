# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Uploads files to Cisco FTD devices including disk files, backups, and upgrades.
      class Ftd_file_upload < Base
        # @return [String] The name of the operation to execute.,Only operations that upload file can be used in this module.
        attribute :operation
        validates :operation, presence: true, type: String

        # @return [String] Absolute path to the file that should be uploaded.
        attribute :fileToUpload
        validates :fileToUpload, presence: true, type: String

        # @return [Object, nil] Specifies Ansible fact name that is used to register received response from the FTD device.
        attribute :register_as
      end
    end
  end
end
