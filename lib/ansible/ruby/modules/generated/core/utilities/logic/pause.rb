# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pause < Base
        # @return [String, nil] Number of minutes to pause for.
        attribute :minutes
        validates :minutes, type: String

        # @return [Object, nil] Number of seconds to pause for.
        attribute :seconds

        # @return [String, nil] Optional text to use for the prompt message.
        attribute :prompt
        validates :prompt, type: String
      end
    end
  end
end
