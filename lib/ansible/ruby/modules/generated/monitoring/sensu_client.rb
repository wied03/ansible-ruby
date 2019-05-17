# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Sensu client configuration.
      # For more information, refer to the Sensu documentation: U(https://sensuapp.org/docs/latest/reference/clients.html)
      class Sensu_client < Base
        # @return [:present, :absent, nil] Whether the client should be present or not
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] A unique name for the client. The name cannot contain special characters or spaces.
        attribute :name
        validates :name, type: String

        # @return [String, nil] An address to help identify and reach the client. This is only informational, usually an IP address or hostname.
        attribute :address
        validates :address, type: String

        # @return [Array<String>, String] An array of client subscriptions, a list of roles and/or responsibilities assigned to the system (e.g. webserver).,These subscriptions determine which monitoring checks are executed by the client, as check requests are sent to subscriptions.,The subscriptions array items must be strings.
        attribute :subscriptions
        validates :subscriptions, presence: true, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] If safe mode is enabled for the client. Safe mode requires local check definitions in order to accept a check request and execute the check.
        attribute :safe_mode
        validates :safe_mode, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String, nil] Client definition attributes to redact (values) when logging and sending client keepalives.
        attribute :redact
        validates :redact, type: TypeGeneric.new(String)

        # @return [Hash, nil] The socket definition scope, used to configure the Sensu client socket.
        attribute :socket
        validates :socket, type: Hash

        # @return [:yes, :no, nil] If Sensu should monitor keepalives for this client.
        attribute :keepalives
        validates :keepalives, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Hash, nil] The keepalive definition scope, used to configure Sensu client keepalives behavior (e.g. keepalive thresholds, etc).
        attribute :keepalive
        validates :keepalive, type: Hash

        # @return [Object, nil] The registration definition scope, used to configure Sensu registration event handlers.
        attribute :registration

        # @return [:yes, :no, nil] If a deregistration event should be created upon Sensu client process stop.
        attribute :deregister
        validates :deregister, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The deregistration definition scope, used to configure automated Sensu client de-registration.
        attribute :deregistration

        # @return [Object, nil] The ec2 definition scope, used to configure the Sensu Enterprise AWS EC2 integration (Sensu Enterprise users only).
        attribute :ec2

        # @return [Object, nil] The chef definition scope, used to configure the Sensu Enterprise Chef integration (Sensu Enterprise users only).
        attribute :chef

        # @return [Object, nil] The puppet definition scope, used to configure the Sensu Enterprise Puppet integration (Sensu Enterprise users only).
        attribute :puppet

        # @return [Object, nil] The servicenow definition scope, used to configure the Sensu Enterprise ServiceNow integration (Sensu Enterprise users only).
        attribute :servicenow
      end
    end
  end
end
