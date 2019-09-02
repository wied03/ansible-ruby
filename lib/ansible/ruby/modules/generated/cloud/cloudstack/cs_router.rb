# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Start, restart, stop and destroy routers.
      # C(state=present) is not able to create routers, use M(cs_network) instead.
      class Cs_router < Base
        # @return [String] Name of the router.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name or id of the service offering of the router.
        attribute :service_offering
        validates :service_offering, type: String

        # @return [Object, nil] Domain the router is related to.
        attribute :domain

        # @return [Object, nil] Account the router is related to.
        attribute :account

        # @return [Object, nil] Name of the project the router is related to.
        attribute :project

        # @return [Object, nil] Name of the zone the router is deployed in.,If not set, all zones are used.
        attribute :zone

        # @return [:present, :absent, :started, :stopped, :restarted, nil] State of the router.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :started, :stopped, :restarted], :message=>"%{value} needs to be :present, :absent, :started, :stopped, :restarted"}, allow_nil: true

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
