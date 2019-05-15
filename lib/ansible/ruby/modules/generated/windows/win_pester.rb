# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Run Pester tests on Windows hosts.
      # Test files have to be available on the remote host.
      class Win_pester < Base
        # @return [String] Path to a pester test file or a folder where tests can be found.,If the path is a folder, the module will consider all ps1 files as Pester tests.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] Minimum version of the pester module that has to be available on the remote host.
        attribute :version
        validates :version, type: String
      end
    end
  end
end
