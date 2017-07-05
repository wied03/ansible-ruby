# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt virtual machines.
      class Ovirt_vms_facts < Base
        # @return [String, nil] Search term which is accepted by oVirt search backend.,For example to search VM X from cluster Y use following pattern: name=X and cluster=Y
        attribute :pattern
        validates :pattern, type: String

        # @return [Object, nil] If I(true) all the attributes of the virtual machines should be included in the response.
        attribute :all_content

        # @return [Object, nil] If I(true) performed search will take case into account.
        attribute :case_sensitive

        # @return [Object, nil] The maximum number of results to return.
        attribute :max
      end
    end
  end
end
