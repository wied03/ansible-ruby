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

        # @return [:present, :absent, :started, :stopped, :restarted, nil] State of the router.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :started, :stopped, :restarted], :message=>"%{value} needs to be :present, :absent, :started, :stopped, :restarted"}, allow_nil: true
      end
    end
  end
end
