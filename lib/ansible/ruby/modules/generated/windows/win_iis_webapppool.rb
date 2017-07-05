# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, Removes and configures an IIS Web Application Pool
      class Win_iis_webapppool < Base
        # @return [String] Name of application pool
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :stopped, :started, :restarted, nil] State of the binding
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :stopped, :started, :restarted], :message=>"%{value} needs to be :absent, :stopped, :started, :restarted"}, allow_nil: true

        # @return [String, nil] Application Pool attributes from string where attributes are separated by a pipe and attribute name/values by colon Ex. "foo:1|bar:2".,The following attributes may only have the following names.,managedPipelineMode may be either "Integrated" or  "Classic".,startMode may be either "OnDemand" or  "AlwaysRunning".,state may be one of "Starting", "Started", "Stopping", "Stopped", "Unknown". Use the C(state) module parameter to modify, states shown are reflect the possible runtime values.
        attribute :attributes
        validates :attributes, type: String
      end
    end
  end
end