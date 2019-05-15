# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates/modified or removes Windows scheduled tasks.
      class Win_scheduled_task < Base
        # @return [String] The name of the scheduled task without the path.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Task folder in which this task will be stored.,Will create the folder when C(state=present) and the folder does not already exist.,Will remove the folder when C(state=absent) and there are no tasks left in the folder.
        attribute :path
        validates :path, type: String

        # @return [:absent, :present, nil] When C(state=present) will ensure the task exists.,When C(state=absent) will ensure the task does not exist.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of action to configure for the task.,See suboptions for details on how to construct each list entry.,When creating a task there MUST be at least one action but when deleting a task this can be a null or an empty list.,The ordering of this list is important, the module will ensure the order is kept when modifying the task.,This module only supports the C(ExecAction) type but can still delete the older legacy types.
        attribute :actions
        validates :actions, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] A list of triggers to configure for the task.,See suboptions for details on how to construct each list entry.,The ordering of this list is important, the module will ensure the order is kept when modifying the task.,There are multiple types of triggers, see U(https://msdn.microsoft.com/en-us/library/windows/desktop/aa383868.aspx) for a list of trigger types and their options.,The suboption options listed below are not required for all trigger types, read the description for more details.
        attribute :triggers
        validates :triggers, type: TypeGeneric.new(Hash)

        # @return [Object, nil] The name of the user/group that is displayed in the Task Scheduler UI.
        attribute :display_name

        # @return [Object, nil] The group that will run the task.,C(group) and C(username) are exclusive to each other and cannot be set at the same time.,C(logon_type) can either be not set or equal C(group).
        attribute :group

        # @return [:none, :password, :s4u, :interactive_token, :group, :service_account, :token_or_password, nil] The logon method that the task will run with.,C(password) means the password will be stored and the task has access to network resources.,C(s4u) means the existing token will be used to run the task and no password will be stored with the task. Means no network or encrypted files access.,C(interactive_token) means the user must already be logged on interactively and will run in an existing interactive session.,C(group) means that the task will run as a group.,C(service_account) means that a service account like System, Local Service or Network Service will run the task.
        attribute :logon_type
        validates :logon_type, inclusion: {:in=>[:none, :password, :s4u, :interactive_token, :group, :service_account, :token_or_password], :message=>"%{value} needs to be :none, :password, :s4u, :interactive_token, :group, :service_account, :token_or_password"}, allow_nil: true

        # @return [:limited, :highest, nil] The level of user rights used to run the task.,If not specified the task will be created with limited rights.
        attribute :run_level
        validates :run_level, inclusion: {:in=>[:limited, :highest], :message=>"%{value} needs to be :limited, :highest"}, allow_nil: true

        # @return [String, nil] The user to run the scheduled task as.,Will default to the current user under an interactive token if not specified during creation.
        attribute :username
        validates :username, type: String

        # @return [String, nil] The password for the user account to run the scheduled task as.,This is required when running a task without the user being logged in, excluding the builtin service accounts.,If set, will always result in a change unless C(update_password) is set to C(no) and no othr changes are required for the service.
        attribute :password
        validates :password, type: String

        # @return [String, nil] Whether to update the password even when not other changes have occured.,When C(yes) will always result in a change when executing the module.
        attribute :update_password
        validates :update_password, type: String

        # @return [Object, nil] The author of the task.
        attribute :author

        # @return [Object, nil] The date when the task was registered.
        attribute :date

        # @return [String, nil] The description of the task.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] The source of the task.
        attribute :source

        # @return [Object, nil] The version number of the task.
        attribute :version

        # @return [Object, nil] Whether the task can be started by using either the Run command or the Context menu.
        attribute :allow_demand_start

        # @return [Object, nil] Whether the task can be terminated by using TerminateProcess.
        attribute :allow_hard_terminate

        # @return [0, 1, 2, nil] The integer value with indicates which version of Task Scheduler a task is compatible with.,C(0) means the task is compatible with the AT command.,C(1) means the task is compatible with Task Scheduler 1.0.,C(2) means the task is compatible with Task Scheduler 2.0.
        attribute :compatibility
        validates :compatibility, inclusion: {:in=>[0, 1, 2], :message=>"%{value} needs to be 0, 1, 2"}, allow_nil: true

        # @return [Object, nil] The amount of time that the Task Scheduler will wait before deleting the task after it expires.,A task expires after the end_boundary has been exceeded for all triggers associated with the task.,This is in the ISO 8601 Duration format C(P[n]Y[n]M[n]DT[n]H[n]M[n]S).
        attribute :delete_expired_task_after

        # @return [Object, nil] Whether the task will not be started if the computer is running on battery power.
        attribute :disallow_start_if_on_batteries

        # @return [TrueClass, FalseClass, nil] Whether the task is enabled, the task can only run when C(yes).
        attribute :enabled
        validates :enabled, type: MultipleTypes.new(TrueClass, FalseClass)

        # @return [Object, nil] The amount of time allowed to complete the task.,When not set, the time limit is infinite.,This is in the ISO 8601 Duration format C(P[n]Y[n]M[n]DT[n]H[n]M[n]S).
        attribute :execution_time_limit

        # @return [Object, nil] Whether the task will be hidden in the UI.
        attribute :hidden

        # @return [0, 1, 2, 3, nil] An integer that indicates the behaviour when starting a task that is already running.,C(0) will start a new instance in parallel with existing instances of that task.,C(1) will wait until other instances of that task to finish running before starting itself.,C(2) will not start a new instance if another is running.,C(3) will stop other instances of the task and start the new one.
        attribute :multiple_instances
        validates :multiple_instances, inclusion: {:in=>[0, 1, 2, 3], :message=>"%{value} needs to be 0, 1, 2, 3"}, allow_nil: true

        # @return [Object, nil] The priority level (0-10) of the task.,When creating a new task the default if C(7).,See U(https://msdn.microsoft.com/en-us/library/windows/desktop/aa383512.aspx) for details on the priority levels.
        attribute :priority

        # @return [Object, nil] The number of times that the Task Scheduler will attempt to restart the task.
        attribute :restart_count

        # @return [Object, nil] How long the Task Scheduler will attempt to restart the task.,If this is set then C(restart_count) must also be set.,The maximum allowed time is 31 days.,The minimum allowed time is 1 minute.,This is in the ISO 8601 Duration format C(P[n]Y[n]M[n]DT[n]H[n]M[n]S).
        attribute :restart_interval

        # @return [Object, nil] Whether the task will run the task only if the computer is in an idle state.
        attribute :run_only_if_idle

        # @return [Object, nil] Whether the task will run only when a network is available.
        attribute :run_only_if_network_available

        # @return [Object, nil] Whether the task can start at any time after its scheduled time has passed.
        attribute :start_when_available

        # @return [Object, nil] Whether the task will be stopped if the computer begins to run on battery power.
        attribute :stop_if_going_on_batteries

        # @return [Object, nil] Whether the task will wake the computer when it is time to run the task.
        attribute :wake_to_run
      end
    end
  end
end
