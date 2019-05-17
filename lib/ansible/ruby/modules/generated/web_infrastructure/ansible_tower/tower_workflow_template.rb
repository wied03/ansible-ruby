# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower workflows. See U(https://www.ansible.com/tower) for an overview.
      class Tower_workflow_template < Base
        # @return [Symbol, nil] If enabled, simultaneous runs of this job template will be allowed.
        attribute :allow_simultaneous
        validates :allow_simultaneous, type: Symbol

        # @return [String, nil] The description to use for the workflow.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Extra variables used by Ansible in YAML or key=value format.\r\n
        attribute :extra_vars

        # @return [String] The name to use for the workflow.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The organization the workflow is linked to.
        attribute :organization
        validates :organization, type: String

        # @return [String, nil] The schema is a JSON- or YAML-formatted string defining the hierarchy structure that connects the nodes. Refer to Tower documentation for more information.\r\n
        attribute :schema
        validates :schema, type: String

        # @return [Symbol, nil] Setting that variable will prompt the user for job type on the workflow launch.
        attribute :survey_enabled
        validates :survey_enabled, type: Symbol

        # @return [Object, nil] The definition of the survey associated to the workflow.
        attribute :survey

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
