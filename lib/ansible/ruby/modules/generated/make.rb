# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Make < Base
        # @return [String] The target to run
        attribute :target
        validates :target, type: String

        # @return [String] Any extra parameters to pass to make
        attribute :params
        validates :params, type: String

        # @return [String] cd into this directory before running make
        attribute :chdir
        validates :chdir, presence: true, type: String
      end
    end
  end
end
