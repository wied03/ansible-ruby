# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Newrelic_deployment < Base
        # @return [String] API token, to place in the x-api-key header.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] (one of app_name or application_id are required) The value of app_name in the newrelic.yml file used by the application
        attribute :app_name
        validates :app_name, type: String

        # @return [Object] (one of app_name or application_id are required) The application id, found in the URL when viewing the application in RPM
        attribute :application_id

        # @return [Object] A list of changes for this deployment
        attribute :changelog

        # @return [Object] Text annotation for the deployment - notes for you
        attribute :description

        # @return [String] A revision number (e.g., git commit SHA)
        attribute :revision
        validates :revision, type: String

        # @return [String] The name of the user/process that triggered this deployment
        attribute :user
        validates :user, type: String

        # @return [Object] Name of the application
        attribute :appname

        # @return [Object] The environment for this deployment
        attribute :environment

        # @return [String] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
