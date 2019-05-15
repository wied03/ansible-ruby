# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about the Scaleway organizations available.
      class Scaleway_organization_facts < Base
        # @return [String, nil] Scaleway API URL
        attribute :api_url
        validates :api_url, type: String
      end
    end
  end
end
