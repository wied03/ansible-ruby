# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower job templates. See U(https://www.ansible.com/tower) for an overview.
      class Tower_job_template < Base
        # @return [String] Name to use for the job template.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Description to use for the job template.
        attribute :description

        # @return [:run, :check, :scan] The job type to use for the job template.
        attribute :job_type
        validates :job_type, presence: true, inclusion: {:in=>[:run, :check, :scan], :message=>"%{value} needs to be :run, :check, :scan"}

        # @return [String, nil] Name of the inventory to use for the job template.
        attribute :inventory
        validates :inventory, type: String

        # @return [String] Name of the project to use for the job template.
        attribute :project
        validates :project, presence: true, type: String

        # @return [String] Path to the playbook to use for the job template within the project provided.
        attribute :playbook
        validates :playbook, presence: true, type: String

        # @return [String, nil] Name of the credential to use for the job template.
        attribute :credential
        validates :credential, type: String

        # @return [Object, nil] Name of the vault credential to use for the job template.
        attribute :vault_credential

        # @return [Object, nil] The number of parallel or simultaneous processes to use while executing the playbook.
        attribute :forks

        # @return [Object, nil] A host pattern to further constrain the list of hosts managed or affected by the playbook
        attribute :limit

        # @return [0, 1, 2, 3, 4, nil] Control the output level Ansible produces as the playbook runs. 0 - Normal, 1 - Verbose, 2 - More Verbose, 3 - Debug, 4 - Connection Debug.
        attribute :verbosity
        validates :verbosity, inclusion: {:in=>[0, 1, 2, 3, 4], :message=>"%{value} needs to be 0, 1, 2, 3, 4"}, allow_nil: true

        # @return [Object, nil] Path to the C(extra_vars) YAML file.
        attribute :extra_vars_path

        # @return [Object, nil] Comma separated list of the tags to use for the job template.
        attribute :job_tags

        # @return [:yes, :no, nil] Enable forcing playbook handlers to run even if a task fails.
        attribute :force_handlers_enabled
        validates :force_handlers_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Comma separated list of the tags to skip for the job template.
        attribute :skip_tags

        # @return [Object, nil] Start the playbook at the task matching this name.
        attribute :start_at_task

        # @return [:yes, :no, nil] Enable use of fact caching for the job template.
        attribute :fact_caching_enabled
        validates :fact_caching_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Allow provisioning callbacks using this host config key.
        attribute :host_config_key

        # @return [:yes, :no, nil] Prompt user to enable diff mode (show changes) to files when supported by modules.
        attribute :ask_diff_mode
        validates :ask_diff_mode, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Prompt user for (extra_vars) on launch.
        attribute :ask_extra_vars
        validates :ask_extra_vars, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Prompt user for a limit on launch.
        attribute :ask_limit
        validates :ask_limit, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Prompt user for job tags on launch.
        attribute :ask_tags
        validates :ask_tags, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Prompt user for job tags to skip on launch.
        attribute :ask_skip_tags
        validates :ask_skip_tags, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Prompt user for job type on launch.
        attribute :ask_job_type
        validates :ask_job_type, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Prompt user to choose a verbosity level on launch.
        attribute :ask_verbosity
        validates :ask_verbosity, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Propmt user for inventory on launch.
        attribute :ask_inventory
        validates :ask_inventory, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Prompt user for credential on launch.
        attribute :ask_credential
        validates :ask_credential, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Enable a survey on the job template.
        attribute :survey_enabled
        validates :survey_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Activate privilege escalation.
        attribute :become_enabled
        validates :become_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Allow simultaneous runs of the job template.
        attribute :concurrent_jobs_enabled
        validates :concurrent_jobs_enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
