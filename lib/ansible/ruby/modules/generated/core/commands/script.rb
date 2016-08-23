# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Script < Base
        # @return [Object] path to the local script file followed by optional arguments.
        attribute :free_form
        validates :free_form, presence: true

        # @return [String, nil] a filename, when it already exists, this step will B(not) be run.
        attribute :creates
        validates :creates, type: String

        # @return [String, nil] a filename, when it does not exist, this step will B(not) be run.
        attribute :removes
        validates :removes, type: String
      end
    end
  end
end
