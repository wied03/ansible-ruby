# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Request a reload of Memset's DNS infrastructure, and optionally poll until it finishes.
      class Memset_dns_reload < Base
        # @return [String] The API key obtained from the Memset control panel.
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [Symbol, nil] Boolean value, if set will poll the reload job's status and return when the job has completed (unless the 30 second timeout is reached first). If the timeout is reached then the task will not be marked as failed, but stderr will indicate that the polling failed.
        attribute :poll
        validates :poll, type: Symbol
      end
    end
  end
end
