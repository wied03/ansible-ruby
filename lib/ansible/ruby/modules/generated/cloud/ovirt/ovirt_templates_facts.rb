# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt templates.
      class Ovirt_templates_facts < Base
        # @return [String, nil] Search term which is accepted by oVirt search backend.,For example to search template X from datacenter Y use following pattern: name=X and datacenter=Y
        attribute :pattern
        validates :pattern, type: String
      end
    end
  end
end
