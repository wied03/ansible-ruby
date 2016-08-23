# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Fail < Base
        # @return [String, nil] The customized message used for failing execution. If omitted, fail will simple bail out with a generic message.
        attribute :msg
        validates :msg, type: String
      end
    end
  end
end
