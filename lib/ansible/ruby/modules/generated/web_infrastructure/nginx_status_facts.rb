# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gathers facts from nginx from an URL having C(stub_status) enabled.
      class Nginx_status_facts < Base
        # @return [String] URL of the nginx status.
        attribute :url
        validates :url, presence: true, type: String

        # @return [Integer, nil] HTTP connection timeout in seconds.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
