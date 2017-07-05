# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Notify newrelic about app deployments (see https://docs.newrelic.com/docs/apm/new-relic-apm/maintenance/deployment-notifications#api)
      class Newrelic_deployment < Base
        # @return [String] API token, to place in the x-api-key header.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String, nil] (one of app_name or application_id are required) The value of app_name in the newrelic.yml file used by the application
        attribute :app_name
        validates :app_name, type: String

        # @return [Object, nil] (one of app_name or application_id are required) The application id, found in the URL when viewing the application in RPM
        attribute :application_id

        # @return [Object, nil] A list of changes for this deployment
        attribute :changelog

        # @return [Object, nil] Text annotation for the deployment - notes for you
        attribute :description

        # @return [String, nil] A revision number (e.g., git commit SHA)
        attribute :revision
        validates :revision, type: String

        # @return [String, nil] The name of the user/process that triggered this deployment
        attribute :user
        validates :user, type: String

        # @return [Object, nil] Name of the application
        attribute :appname

        # @return [Object, nil] The environment for this deployment
        attribute :environment

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
