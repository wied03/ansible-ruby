# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV virtual machines.
      class Ovirt_vm_facts < Base
        # @return [String, nil] Search term which is accepted by oVirt/RHV search backend.,For example to search VM X from cluster Y use following pattern: name=X and cluster=Y
        attribute :pattern
        validates :pattern, type: String

        # @return [Symbol, nil] If I(true) all the attributes of the virtual machines should be included in the response.
        attribute :all_content
        validates :all_content, type: Symbol

        # @return [Boolean, nil] If I(true) performed search will take case into account.
        attribute :case_sensitive
        validates :case_sensitive, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The maximum number of results to return.
        attribute :max
      end
    end
  end
end
