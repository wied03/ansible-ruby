# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows a server team to provision server network ports for new servers without having to access Arista CVP or asking the network team to do it for them. Provide the information for connecting to CVP, switch rack, port the new server is connected to, optional vlan, and an action and the module will apply the configuration to the switch port via CVP. Actions are add (applies template config to port), remove (defaults the interface config) and show (returns the current port config).
      class Cv_server_provision < Base
        # @return [String] The hostname or IP address of the CVP node being connected to.
        attribute :host
        validates :host, presence: true, type: String

        # @return [Object, nil] The port number to use when making API calls to the CVP node. This will default to the default port for the specified protocol. Port 80 for http and port 443 for https.
        attribute :port

        # @return [:https, :http, nil] The protocol to use when making API calls to CVP. CVP defaults to https and newer versions of CVP no longer support http.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:https, :http], :message=>"%{value} needs to be :https, :http"}, allow_nil: true

        # @return [String] The user that will be used to connect to CVP for making API calls.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] The password of the user that will be used to connect to CVP for API calls.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] The hostname or identifier for the server that is having it's switch port provisioned.
        attribute :server_name
        validates :server_name, presence: true, type: String

        # @return [String] The hostname of the switch is being configured for the server being provisioned.
        attribute :switch_name
        validates :switch_name, presence: true, type: String

        # @return [Integer] The physical port number on the switch that the new server is connected to.
        attribute :switch_port
        validates :switch_port, presence: true, type: Integer

        # @return [Integer, nil] The vlan that should be applied to the port for this server. This parameter is dependent on a proper template that supports single vlan provisioning with it. If a port vlan is specified by the template specified does not support this the module will exit out with no changes. If a template is specified that requires a port vlan but no port vlan is specified the module will exit out with no changes.
        attribute :port_vlan
        validates :port_vlan, type: Integer

        # @return [String] A path to a Jinja formatted template file that contains the configuration block that will be applied to the specified switch port. This template will have variable fields replaced by the module before being applied to the switch configuration.
        attribute :template
        validates :template, presence: true, type: String

        # @return [:show, :add, :remove, nil] The action for the module to take. The actions are add, which applies the specified template config to port, remove, which defaults the specified interface configuration, and show, which will return the current port configuration with no changes.
        attribute :action
        validates :action, inclusion: {:in=>[:show, :add, :remove], :message=>"%{value} needs to be :show, :add, :remove"}, allow_nil: true

        # @return [:yes, :no, nil] Flag that determines whether or not the module will execute the CVP task spawned as a result of changes to a switch configlet. When an add or remove action is taken which results in a change to a switch configlet, CVP will spawn a task that needs to be executed for the configuration to be applied to the switch. If this option is True then the module will determined the task number created by the configuration change, execute it and wait for the task to complete. If the option is False then the task will remain in the Pending state in CVP for a network administrator to review and execute.
        attribute :auto_run
        validates :auto_run, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
