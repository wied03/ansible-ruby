# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Lists or describes services in ecs.
      class Ecs_service_facts < Base
        # @return [String, nil] Set this to true if you want detailed information about the services.
        attribute :details
        validates :details, type: String

        # @return [String, nil] Whether to return ECS service events. Only has an effect if C(details) is true.
        attribute :events
        validates :events, type: String

        # @return [String, nil] The cluster ARNS in which to list the services.
        attribute :cluster
        validates :cluster, type: String

        # @return [String, nil] One or more services to get details for
        attribute :service
        validates :service, type: String
      end
    end
  end
end
