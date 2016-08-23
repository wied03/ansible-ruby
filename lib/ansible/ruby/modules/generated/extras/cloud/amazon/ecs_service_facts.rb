# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ecs_service_facts < Base
        # @return [:true, :false, nil] Set this to true if you want detailed information about the services.
        attribute :details
        validates :details, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [String, nil] The cluster ARNS in which to list the services.
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] The service to get details for (required if details is true)
        attribute :service
        validates :service, type: String
      end
    end
  end
end
