# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Windows services
      class Win_service < Base
        # @return [Array<String>, String, nil] A list of service dependencies to set for this particular service.,This should be a list of service names and not the display name of the service.,This works by C(dependency_action) to either add/remove or set the services in this list.
        attribute :dependencies
        validates :dependencies, type: TypeGeneric.new(String)

        # @return [:set, :add, :remove, nil] Used in conjunction with C(dependency) to either add the dependencies to the existing service dependencies.,Remove the dependencies to the existing dependencies.,Set the dependencies to only the values in the list replacing the existing dependencies.
        attribute :dependency_action
        validates :dependency_action, inclusion: {:in=>[:set, :add, :remove], :message=>"%{value} needs to be :set, :add, :remove"}, allow_nil: true

        # @return [Boolean, nil] Whether to allow the service user to interact with the desktop.,This should only be set to true when using the LocalSystem username.
        attribute :desktop_interact
        validates :desktop_interact, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The description to set for the service.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The display name to set for the service.
        attribute :display_name
        validates :display_name, type: String

        # @return [Boolean, nil] If True, stopping or restarting a service with dependent services will force the dependent services to stop or restart also.,If False, stopping or restarting a service with dependent services may fail.
        attribute :force_dependent_services
        validates :force_dependent_services, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Name of the service
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The path to the executable to set for the service.
        attribute :path
        validates :path, type: String

        # @return [String, nil] The password to set the service to start as.,This and the C(username) argument must be supplied together.,If specifying LocalSystem, NetworkService or LocalService this field must be an empty string and not null.
        attribute :password
        validates :password, type: String

        # @return [:auto, :manual, :disabled, :delayed, nil] Set the startup type for the service.,C(delayed) added in Ansible 2.3
        attribute :start_mode
        validates :start_mode, inclusion: {:in=>[:auto, :manual, :disabled, :delayed], :message=>"%{value} needs to be :auto, :manual, :disabled, :delayed"}, allow_nil: true

        # @return [:started, :stopped, :restarted, :absent, nil] C(started)/C(stopped)/C(absent) are idempotent actions that will not run commands unless necessary.,C(restarted) will always bounce the service.,C(absent) added in Ansible 2.3
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :restarted, :absent], :message=>"%{value} needs to be :started, :stopped, :restarted, :absent"}, allow_nil: true

        # @return [String, nil] The username to set the service to start as.,This and the C(password) argument must be supplied together.
        attribute :username
        validates :username, type: String
      end
    end
  end
end
