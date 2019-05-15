# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts for WAF ACLs, Rule , Conditions and Filters.
      class Aws_waf_facts < Base
        # @return [String, nil] The name of a Web Application Firewall
        attribute :name
        validates :name, type: String
      end
    end
  end
end
