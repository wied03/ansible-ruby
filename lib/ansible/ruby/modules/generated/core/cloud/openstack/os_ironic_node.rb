# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_ironic_node < Base
        # @return [String] Indicates desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [TrueClass] Indicates if the resource should be deployed. Allows for deployment logic to be disengaged and control of the node power or maintenance state to be changed.
        attribute :deploy
        validates :deploy, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [String] globally unique identifier (UUID) to be given to the resource.
        attribute :uuid
        validates :uuid, type: String

        # @return [String] If noauth mode is utilized, this is required to be set to the endpoint URL for the Ironic API.  Use with "auth" and "auth_type" settings set to None.
        attribute :ironic_url
        validates :ironic_url, type: String

        # @return [String] A configdrive file or HTTP(S) URL that will be passed along to the node.
        attribute :config_drive
        validates :config_drive, type: String

        # @return [Object] Definition of the instance information which is used to deploy the node.  This information is only required when an instance is set to present.
        attribute :instance_info

        # @return [String] A setting to allow power state to be asserted allowing nodes that are not yet deployed to be powered on, and nodes that are deployed to be powered off.
        attribute :power
        validates :power, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] A setting to allow the direct control if a node is in maintenance mode.
        attribute :maintenance

        # @return [String] A string expression regarding the reason a node is in a maintenance mode.
        attribute :maintenance_reason
        validates :maintenance_reason, type: String

        # @return [Object] A boolean value instructing the module to wait for node activation or deactivation to complete before returning.
        attribute :wait

        # @return [Object] An integer value representing the number of seconds to wait for the node activation or deactivation to complete.
        attribute :timeout
      end
    end
  end
end
