# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the hostname of a BIG-IP.
      class Bigip_hostname < Base
        # @return [String] Hostname of the BIG-IP host.
        attribute :hostname
        validates :hostname, presence: true, type: String
      end
    end
  end
end
