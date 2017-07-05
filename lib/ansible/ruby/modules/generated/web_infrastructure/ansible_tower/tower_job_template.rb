# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower job templates. See U(https://www.ansible.com/tower) for an overview.
      class Tower_job_template < Base
        # @return [String] Name to use for the job_template.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Description to use for the job_template.
        attribute :description

        # @return [:run, :check, :scan] The job_type to use for the job_template.
        attribute :job_type
        validates :job_type, presence: true, inclusion: {:in=>[:run, :check, :scan], :message=>"%{value} needs to be :run, :check, :scan"}

        # @return [String, nil] Inventory to use for the job_template.
        attribute :inventory
        validates :inventory, type: String

        # @return [String] Project to use for the job_template.
        attribute :project
        validates :project, presence: true, type: String

        # @return [String] Playbook to use for the job_template.
        attribute :playbook
        validates :playbook, presence: true, type: String

        # @return [String, nil] Machine_credential to use for the job_template.
        attribute :machine_credential
        validates :machine_credential, type: String

        # @return [Object, nil] Cloud_credential to use for the job_template.
        attribute :cloud_credential

        # @return [Object, nil] The network_credential to use for the job_template.
        attribute :network_credential

        # @return [Object, nil] The number of parallel or simultaneous processes to use while executing the playbook.
        attribute :forks

        # @return [Object, nil] A host pattern to further constrain the list of hosts managed or affected by the playbook
        attribute :limit

        # @return [:verbose, :debug, nil] Control the output level Ansible produces as the playbook runs.
        attribute :verbosity
        validates :verbosity, inclusion: {:in=>[:verbose, :debug], :message=>"%{value} needs to be :verbose, :debug"}, allow_nil: true

        # @return [Object, nil] The job_tags to use for the job_template.
        attribute :job_tags

        # @return [Object, nil] The skip_tags to use for the job_template.
        attribute :skip_tags

        # @return [Object, nil] Allow provisioning callbacks using this host config key.
        attribute :host_config_key

        # @return [Object, nil] Path to the extra_vars yaml file.
        attribute :extra_vars_path

        # @return [Boolean, nil] Prompt user for extra_vars on launch.
        attribute :ask_extra_vars
        validates :ask_extra_vars, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Prompt user for job tags on launch.
        attribute :ask_tags
        validates :ask_tags, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Prompt user for job type on launch.
        attribute :ask_job_type
        validates :ask_job_type, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Propmt user for inventory on launch.
        attribute :ask_inventory
        validates :ask_inventory, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Prompt user for credential on launch.
        attribute :ask_credential
        validates :ask_credential, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Should become_enabled.
        attribute :become_enabled
        validates :become_enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] URL to your Tower instance.
        attribute :tower_host

        # @return [Object, nil] Username for your Tower instance.
        attribute :tower_username

        # @return [Object, nil] Password for your Tower instance.
        attribute :tower_password

        # @return [Boolean, nil] Dis/allow insecure connections to Tower. If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :tower_verify_ssl
        validates :tower_verify_ssl, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Path to the Tower config file. See notes.
        attribute :tower_config_file
        validates :tower_config_file, type: String
      end
    end
  end
end
