# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, removes and configures an IIS Web Application Pool.
      class Win_iis_webapppool < Base
        # @return [Hash, nil] This field is a free form dictionary value for the application pool attributes.,These attributes are based on the naming standard at U(https://www.iis.net/configreference/system.applicationhost/applicationpools/add#005), see the examples section for more details on how to set this.,You can also set the attributes of child elements like cpu and processModel, see the examples to see how it is done.,While you can use the numeric values for enums it is recommended to use the enum name itself, e.g. use SpecificUser instead of 3 for processModel.identityType.,managedPipelineMode may be either "Integrated" or "Classic".,startMode may be either "OnDemand" or "AlwaysRunning".,Use C(state) module parameter to modify the state of the app pool.,When trying to set 'processModel.password' and you receive a 'Value does fall within the expected range' error, you have a corrupted keystore. Please follow U(http://structuredsight.com/2014/10/26/im-out-of-range-youre-out-of-range/) to help fix your host.
        attribute :attributes
        validates :attributes, type: Hash

        # @return [String] Name of the application pool.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, :restarted, :started, :stopped, nil] The state of the application pool.,If C(absent) will ensure the app pool is removed.,If C(present) will ensure the app pool is configured and exists.,If C(restarted) will ensure the app pool exists and will restart, this is never idempotent.,If C(started) will ensure the app pool exists and is started.,If C(stopped) will ensure the app pool exists and is stopped.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :restarted, :started, :stopped], :message=>"%{value} needs to be :absent, :present, :restarted, :started, :stopped"}, allow_nil: true
      end
    end
  end
end
