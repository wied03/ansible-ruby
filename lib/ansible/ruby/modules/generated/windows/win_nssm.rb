# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # nssm is a service helper which doesn't suck. See U(https://nssm.cc/) for more information.
      class Win_nssm < Base
        # @return [String] Name of the service to operate on.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, :started, :stopped, :restarted, nil] State of the service on the system.,Note that NSSM actions like "pause", "continue", "rotate" do not fit the declarative style of ansible, so these should be implemented via the ansible command module.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :started, :stopped, :restarted], :message=>"%{value} needs to be :absent, :present, :started, :stopped, :restarted"}, allow_nil: true

        # @return [String, nil] The application binary to run as a service,Specify this whenever the service may need to be installed (state: present, started, stopped, restarted),Note that the application name must look like the following, if the directory includes spaces:,nssm install service "C:\\Program Files\\app.exe\\" "C:\\Path with spaces\\",See commit 0b386fc1984ab74ee59b7bed14b7e8f57212c22b in the nssm.git project for more info: U(https://git.nssm.cc/?p=nssm.git;a=commit;h=0b386fc1984ab74ee59b7bed14b7e8f57212c22b)\r\n
        attribute :application
        validates :application, type: String

        # @return [String, nil] Path to receive output.
        attribute :stdout_file
        validates :stdout_file, type: String

        # @return [String, nil] Path to receive error output.
        attribute :stderr_file
        validates :stderr_file, type: String

        # @return [String, nil] A string representing a dictionary of parameters to be passed to the application when it starts.,Use either this or C(app_parameters_free_form), not both.
        attribute :app_parameters
        validates :app_parameters, type: String

        # @return [String, nil] Single string of parameters to be passed to the service.,Use either this or C(app_parameters), not both.
        attribute :app_parameters_free_form
        validates :app_parameters_free_form, type: String

        # @return [Array<String>, String, nil] Service dependencies that has to be started to trigger startup, separated by comma.
        attribute :dependencies
        validates :dependencies, type: TypeGeneric.new(String)

        # @return [String, nil] User to be used for service startup.
        attribute :user
        validates :user, type: String

        # @return [String, nil] Password to be used for service startup.
        attribute :password
        validates :password, type: String

        # @return [:auto, :delayed, :disabled, :manual, nil] If C(auto) is selected, the service will start at bootup.,C(delayed) causes a delayed but automatic start after boot (added in version 2.5).,C(manual) means that the service will start only when another service needs it.,C(disabled) means that the service will stay off, regardless if it is needed or not.
        attribute :start_mode
        validates :start_mode, inclusion: {:in=>[:auto, :delayed, :disabled, :manual], :message=>"%{value} needs to be :auto, :delayed, :disabled, :manual"}, allow_nil: true
      end
    end
  end
end
