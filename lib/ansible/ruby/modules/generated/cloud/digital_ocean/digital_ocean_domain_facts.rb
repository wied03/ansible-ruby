# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about DigitalOcean provided Domains.
      class Digital_ocean_domain_facts < Base
        # @return [String, nil] Name of the domain to gather facts for.
        attribute :domain_name
        validates :domain_name, type: String
      end
    end
  end
end
