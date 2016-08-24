# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_nssm < Base
        # @return [String] Name of the service to operate on
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :started, :stopped, :restarted, :absent, nil] State of the service on the system,Note that NSSM actions like "pause", "continue", "rotate" do not fit the declarative style of ansible, so these should be implemented via the ansible command module
        attribute :state
        validates :state, inclusion: {:in=>[:present, :started, :stopped, :restarted, :absent], :message=>"%{value} needs to be :present, :started, :stopped, :restarted, :absent"}, allow_nil: true

        # @return [String, nil] The application binary to run as a service,Specify this whenever the service may need to be installed (state: present, started, stopped, restarted),Note that the application name must look like the following, if the directory includes spaces:,nssm install service "c:\\Program Files\\app.exe\\" "C:\\Path with spaces\\",See commit 0b386fc1984ab74ee59b7bed14b7e8f57212c22b in the nssm.git project for more info (https://git.nssm.cc/?p=nssm.git;a=commit;h=0b386fc1984ab74ee59b7bed14b7e8f57212c22b)
        attribute :application
        validates :application, type: String

        # @return [String, nil] Path to receive output
        attribute :stdout_file
        validates :stdout_file, type: String

        # @return [String, nil] Path to receive error output
        attribute :stderr_file
        validates :stderr_file, type: String

        # @return [Hash, nil] Parameters to be passed to the application when it starts
        attribute :app_parameters
        validates :app_parameters, type: Hash

        # @return [Array<String>, String, nil] Service dependencies that has to be started to trigger startup, separated by comma.
        attribute :dependencies
        validates :dependencies, type: TypeGeneric.new(String)

        # @return [String, nil] User to be used for service startup
        attribute :user
        validates :user, type: String

        # @return [String, nil] Password to be used for service startup
        attribute :password
        validates :password, type: String

        # @return [:auto, :manual, :disabled] If C(auto) is selected, the service will start at bootup. C(manual) means that the service will start only when another service needs it. C(disabled) means that the service will stay off, regardless if it is needed or not.
        attribute :start_mode
        validates :start_mode, presence: true, inclusion: {:in=>[:auto, :manual, :disabled], :message=>"%{value} needs to be :auto, :manual, :disabled"}
      end
    end
  end
end
