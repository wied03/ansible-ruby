# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Deploy to nodes controlled by Ironic.
      class Os_ironic_node < Base
        # @return [:present, :absent, nil] Indicates desired state of the resource
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Indicates if the resource should be deployed. Allows for deployment logic to be disengaged and control of the node power or maintenance state to be changed.
        attribute :deploy
        validates :deploy, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] globally unique identifier (UUID) to be given to the resource.
        attribute :uuid

        # @return [Object, nil] If noauth mode is utilized, this is required to be set to the endpoint URL for the Ironic API.  Use with "auth" and "auth_type" settings set to None.
        attribute :ironic_url

        # @return [Object, nil] A configdrive file or HTTP(S) URL that will be passed along to the node.
        attribute :config_drive

        # @return [Object, nil] Definition of the instance information which is used to deploy the node.  This information is only required when an instance is set to present.
        attribute :instance_info

        # @return [:present, :absent, nil] A setting to allow power state to be asserted allowing nodes that are not yet deployed to be powered on, and nodes that are deployed to be powered off.
        attribute :power
        validates :power, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] A setting to allow the direct control if a node is in maintenance mode.
        attribute :maintenance
        validates :maintenance, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] A string expression regarding the reason a node is in a maintenance mode.
        attribute :maintenance_reason

        # @return [:yes, :no, nil] A boolean value instructing the module to wait for node activation or deactivation to complete before returning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] An integer value representing the number of seconds to wait for the node activation or deactivation to complete.
        attribute :timeout

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
