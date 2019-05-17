# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of Web App.
      class Azure_rm_webapp < Base
        # @return [String] Name of the resource group to which the resource belongs.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Unique name of the app to create or update. To create or update a deployment slot, use the {slot} parameter.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Resource location. If not set, location from the resource group will be used as default.
        attribute :location

        # @return [Hash, String, nil] App service plan. Required for creation.,It can be name of existing app service plan in same resource group as web app.,It can be resource id of existing app service plan. eg., /subscriptions/<subs_id>/resourceGroups/<resource_group>/providers/Microsoft.Web/serverFarms/<plan_name>,It can be a dict which contains C(name), C(resource_group), C(sku), C(is_linux) and C(number_of_workers).,C(name). Name of app service plan.,C(resource_group). Resource group name of app service plan.,C(sku). SKU of app service plan. For allowed sku, please refer to U(https://azure.microsoft.com/en-us/pricing/details/app-service/linux/).,C(is_linux). Indicates Linux app service plan. type bool. default False.,C(number_of_workers). Number of workers.
        attribute :plan
        validates :plan, type: MultipleTypes.new(Hash, String)

        # @return [Array<Hash>, Hash, nil] Set of run time framework settings. Each setting is a dictionary.,See U(https://docs.microsoft.com/en-us/azure/app-service/app-service-web-overview) for more info.
        attribute :frameworks
        validates :frameworks, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] Web app container settings.
        attribute :container_settings
        validates :container_settings, type: Hash

        # @return [Object, nil] Repository type of deployment source. Eg. LocalGit, GitHub.,Please see U(https://docs.microsoft.com/en-us/rest/api/appservice/webapps/createorupdate#scmtype) for more info.
        attribute :scm_type

        # @return [Object, nil] Deployment source for git
        attribute :deployment_source

        # @return [Object, nil] The web's startup file.,This only applies for linux web app.
        attribute :startup_file

        # @return [Boolean, nil] True to enable client affinity; False to stop sending session affinity cookies, which route client requests in the same session to the same instance.
        attribute :client_affinity_enabled
        validates :client_affinity_enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] Configures web site to accept only https requests.
        attribute :https_only
        validates :https_only, type: Symbol

        # @return [Symbol, nil] If true web app hostname is not registered with DNS on creation.
        attribute :dns_registration
        validates :dns_registration, type: Symbol

        # @return [Symbol, nil] If true, custom (non *.azurewebsites.net) domains associated with web app are not verified.
        attribute :skip_custom_domain_verification
        validates :skip_custom_domain_verification, type: Symbol

        # @return [Object, nil] Time to live in seconds for web app default domain name.
        attribute :ttl_in_seconds

        # @return [Hash, nil] Configure web app application settings. Suboptions are in key value pair format.
        attribute :app_settings
        validates :app_settings, type: Hash

        # @return [Symbol, nil] Purge any existing application settings. Replace web app application settings with app_settings.
        attribute :purge_app_settings
        validates :purge_app_settings, type: Symbol

        # @return [String, nil] Start/Stop/Restart the web app.
        attribute :app_state
        validates :app_state, type: String

        # @return [:absent, :present, nil] Assert the state of the Web App.,Use 'present' to create or update a Web App and 'absent' to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
