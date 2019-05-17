# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV hosts.
      class Ovirt_host_facts < Base
        # @return [String, nil] Search term which is accepted by oVirt/RHV search backend.,For example to search host X from datacenter Y use following pattern: name=X and datacenter=Y
        attribute :pattern
        validates :pattern, type: String

        # @return [Symbol, nil] If I(true) all the attributes of the hosts should be included in the response.
        attribute :all_content
        validates :all_content, type: Symbol
      end
    end
  end
end
