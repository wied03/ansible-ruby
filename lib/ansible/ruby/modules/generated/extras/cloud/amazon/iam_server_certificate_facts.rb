# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve the attributes of a server certificate
      class Iam_server_certificate_facts < Base
        # @return [String] The name of the server certificate you are retrieving attributes for.
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
