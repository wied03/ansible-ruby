# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module gets the status of an asynchronous task.
      class Async_status < Base
        # @return [Object] Job or task identifier
        attribute :jid
        validates :jid, presence: true

        # @return [:status, :cleanup, nil] if C(status), obtain the status; if C(cleanup), clean up the async job cache located in C(~/.ansible_async/) for the specified job I(jid).
        attribute :mode
        validates :mode, inclusion: {:in=>[:status, :cleanup], :message=>"%{value} needs to be :status, :cleanup"}, allow_nil: true
      end
    end
  end
end
