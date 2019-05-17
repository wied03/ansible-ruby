# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides support for deploying resources with Terraform and pulling resource information back into Ansible.
      class Terraform < Base
        # @return [:planned, :present, :absent, nil] Goal state of given stage/project
        attribute :state
        validates :state, inclusion: {:in=>[:planned, :present, :absent], :message=>"%{value} needs to be :planned, :present, :absent"}, allow_nil: true

        # @return [Object, nil] The path of a terraform binary to use, relative to the 'service_path' unless you supply an absolute path.
        attribute :binary_path

        # @return [String] The path to the root of the Terraform directory with the vars.tf/main.tf/etc to use.
        attribute :project_path
        validates :project_path, presence: true, type: String

        # @return [String, nil] The terraform workspace to work with.
        attribute :workspace
        validates :workspace, type: String

        # @return [Symbol, nil] Only works with state = absent,If true, the workspace will be deleted after the "terraform destroy" action.,The 'default' workspace will not be deleted.
        attribute :purge_workspace
        validates :purge_workspace, type: Symbol

        # @return [Object, nil] The path to an existing Terraform plan file to apply. If this is not specified, Ansible will build a new TF plan and execute it. Note that this option is required if 'state' has the 'planned' value.
        attribute :plan_file

        # @return [Object, nil] The path to an existing Terraform state file to use when building plan. If this is not specified, the default `terraform.tfstate` will be used.,This option is ignored when plan is specified.
        attribute :state_file

        # @return [Object, nil] The path to a variables file for Terraform to fill into the TF configurations.
        attribute :variables_file

        # @return [Object, nil] A group of key-values to override template variables or those in variables files.
        attribute :variables

        # @return [Object, nil] A list of specific resources to target in this plan/application. The resources selected here will also auto-include any dependencies.
        attribute :targets

        # @return [Object, nil] Enable statefile locking, if you use a service that accepts locks (such as S3+DynamoDB) to store your statefile.
        attribute :lock

        # @return [Object, nil] How long to maintain the lock on the statefile, if you use a service that accepts locks (such as S3+DynamoDB).
        attribute :lock_timeout

        # @return [Symbol, nil] To avoid duplicating infra, if a state file can't be found this will force a `terraform init`. Generally, this should be turned off unless you intend to provision an entirely new Terraform deployment.
        attribute :force_init
        validates :force_init, type: Symbol

        # @return [Hash, nil] A group of key-values to provide at init stage to the -backend-config parameter.
        attribute :backend_config
        validates :backend_config, type: Hash
      end
    end
  end
end
