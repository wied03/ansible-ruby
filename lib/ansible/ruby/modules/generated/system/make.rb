# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Run targets in a Makefile.
      class Make < Base
        # @return [String, nil] The target to run
        attribute :target
        validates :target, type: String

        # @return [Hash, nil] Any extra parameters to pass to make
        attribute :params
        validates :params, type: Hash

        # @return [String] cd into this directory before running make
        attribute :chdir
        validates :chdir, presence: true, type: String

        # @return [String, nil] Use file as a Makefile
        attribute :file
        validates :file, type: String
      end
    end
  end
end
