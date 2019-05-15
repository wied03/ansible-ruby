# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV clusters.
      class Ovirt_cluster_facts < Base
        # @return [Hash, nil] Search term which is accepted by oVirt/RHV search backend.,For example to search cluster X from datacenter Y use following pattern: name=X and datacenter=Y
        attribute :pattern
        validates :pattern, type: Hash
      end
    end
  end
end
