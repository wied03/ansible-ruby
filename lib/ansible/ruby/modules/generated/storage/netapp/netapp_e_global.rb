# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allow the user to configure several of the global settings associated with an E-Series storage-system
      class Netapp_e_global < Base
        # @return [String, nil] Set the name of the E-Series storage-system,This label/name doesn't have to be unique.,May be up to 30 characters in length.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] A local path to a file to be used for debug logging
        attribute :log_path
      end
    end
  end
end
