# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage and query Windows services.
      # For non-Windows targets, use the M(service) module instead.
      class Win_service < Base
        # @return [Array<String>, String, nil] A list of service dependencies to set for this particular service.,This should be a list of service names and not the display name of the service.,This works by C(dependency_action) to either add/remove or set the services in this list.
        attribute :dependencies
        validates :dependencies, type: TypeGeneric.new(String)

        # @return [:add, :remove, :set, nil] Used in conjunction with C(dependency) to either add the dependencies to the existing service dependencies.,Remove the dependencies to the existing dependencies.,Set the dependencies to only the values in the list replacing the existing dependencies.
        attribute :dependency_action
        validates :dependency_action, expression_inclusion: {:in=>[:add, :remove, :set], :message=>"%{value} needs to be :add, :remove, :set"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to allow the service user to interact with the desktop.,This should only be set to C(yes) when using the LocalSystem username.
        attribute :desktop_interact
        validates :desktop_interact, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The description to set for the service.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The display name to set for the service.
        attribute :display_name
        validates :display_name, type: String

        # @return [:yes, :no, nil] If C(yes), stopping or restarting a service with dependent services will force the dependent services to stop or restart also.,If C(no), stopping or restarting a service with dependent services may fail.
        attribute :force_dependent_services
        validates :force_dependent_services, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Name of the service.,If only the name parameter is specified, the module will report on whether the service exists or not without making any changes.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The path to the executable to set for the service.
        attribute :path
        validates :path, type: String

        # @return [String, nil] The password to set the service to start as.,This and the C(username) argument must be supplied together.,If specifying LocalSystem, NetworkService or LocalService this field must be an empty string and not null.
        attribute :password
        validates :password, type: String

        # @return [:auto, :delayed, :disabled, :manual, nil] Set the startup type for the service.,C(delayed) added in Ansible 2.3
        attribute :start_mode
        validates :start_mode, expression_inclusion: {:in=>[:auto, :delayed, :disabled, :manual], :message=>"%{value} needs to be :auto, :delayed, :disabled, :manual"}, allow_nil: true

        # @return [:absent, :paused, :started, :stopped, :restarted, nil] C(started)/C(stopped)/C(absent)/C(pause) are idempotent actions that will not run commands unless necessary.,C(restarted) will always bounce the service.,C(absent) added in Ansible 2.3,C(pause) was added in Ansible 2.4,Only services that support the paused state can be paused, you can check the return value C(can_pause_and_continue).,You can only pause a service that is already started.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :paused, :started, :stopped, :restarted], :message=>"%{value} needs to be :absent, :paused, :started, :stopped, :restarted"}, allow_nil: true

        # @return [String, nil] The username to set the service to start as.,This and the C(password) argument must be supplied together when using a local or domain account.,Set to C(LocalSystem) to use the SYSTEM account.
        attribute :username
        validates :username, type: String
      end
    end
  end
end
