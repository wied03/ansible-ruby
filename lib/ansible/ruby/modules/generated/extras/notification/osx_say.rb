# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Osx_say < Base
        # @return [String] What to say
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String] What voice to use
        attribute :voice
        validates :voice, type: String
      end
    end
  end
end
