# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module fails the progress with a custom message. It can be useful for bailing out when a certain condition is met using C(when).
      class Fail < Base
        # @return [String, nil] The customized message used for failing execution. If omitted, fail will simple bail out with a generic message.
        attribute :msg
        validates :msg, type: String
      end
    end
  end
end
