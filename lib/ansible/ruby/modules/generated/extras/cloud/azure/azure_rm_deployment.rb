# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy Azure Resource Manager template deployments via the Azure SDK for Python. You can find some quick start templates in GitHub here https://github.com/azure/azure-quickstart-templates. For more information on Azue resource manager templates see https://azure.microsoft.com/en-us/documentation/articles/resource-group-template-deploy/.
      class Azure_rm_deployment < Base
        # @return [String] The resource group name to use or create to host the deployed template
        attribute :resource_group_name
        validates :resource_group_name, presence: true, type: String

        # @return [String, nil] The geo-locations in which the resource group will be located.
        attribute :location
        validates :location, type: String

        # @return [:complete, :incremental, nil] In incremental mode, resources are deployed without deleting existing resources that are not included in the template. In complete mode resources are deployed and existing resources in the resource group not included in the template are deleted.
        attribute :deployment_mode
        validates :deployment_mode, inclusion: {:in=>[:complete, :incremental], :message=>"%{value} needs to be :complete, :incremental"}, allow_nil: true

        # @return [:present, :absent, nil] If state is "present", template will be created. If state is "present" and if deployment exists, it will be updated. If state is "absent", stack will be removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] A hash containing the templates inline. This parameter is mutually exclusive with 'template_link'. Either one of them is required if "state" parameter is "present".
        attribute :template

        # @return [String, nil] Uri of file containing the template body. This parameter is mutually exclusive with 'template'. Either one of them is required if "state" parameter is "present".
        attribute :template_link
        validates :template_link, type: String

        # @return [Object, nil] A hash of all the required template variables for the deployment template. This parameter is mutually exclusive with 'parameters_link'. Either one of them is required if "state" parameter is "present".
        attribute :parameters

        # @return [String, nil] Uri of file containing the parameters body. This parameter is mutually exclusive with 'parameters'. Either one of them is required if "state" parameter is "present".
        attribute :parameters_link
        validates :parameters_link, type: String

        # @return [String, nil] The name of the deployment to be tracked in the resource group deployment history. Re-using a deployment name will overwrite the previous value in the resource group's deployment history.
        attribute :deployment_name
        validates :deployment_name, type: String

        # @return [Boolean, nil] Whether or not to block until the deployment has completed.
        attribute :wait_for_deployment_completion
        validates :wait_for_deployment_completion, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Time (in seconds) to wait between polls when waiting for deployment completion.
        attribute :wait_for_deployment_polling_period
        validates :wait_for_deployment_polling_period, type: Integer
      end
    end
  end
end
