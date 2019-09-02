# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Launch an Ansible Tower jobs. See U(https://www.ansible.com/tower) for an overview.
      class Tower_job_launch < Base
        # @return [String] Name of the job template to use.
        attribute :job_template
        validates :job_template, presence: true, type: String

        # @return [Object, nil] Job explanation field.
        attribute :job_explanation

        # @return [:run, :check, :scan, nil] Job_type to use for the job, only used if prompt for job_type is set.
        attribute :job_type
        validates :job_type, expression_inclusion: {:in=>[:run, :check, :scan], :message=>"%{value} needs to be :run, :check, :scan"}, allow_nil: true

        # @return [Object, nil] Inventory to use for the job, only used if prompt for inventory is set.
        attribute :inventory

        # @return [Object, nil] Credential to use for job, only used if prompt for credential is set.
        attribute :credential

        # @return [Object, nil] Extra_vars to use for the job_template. Prepend C(@) if a file.
        attribute :extra_vars

        # @return [Object, nil] Limit to use for the I(job_template).
        attribute :limit

        # @return [Object, nil] Specific tags to use for from playbook.
        attribute :tags

        # @return [:yes, :no, nil] Disable launching jobs from job template.
        attribute :use_job_endpoint
        validates :use_job_endpoint, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
