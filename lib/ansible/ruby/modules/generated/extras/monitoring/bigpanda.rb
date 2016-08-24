# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bigpanda < Base
        # @return [String] The name of the component being deployed. Ex: billing
        attribute :component
        validates :component, presence: true, type: String

        # @return [String] The deployment version.
        attribute :version
        validates :version, presence: true, type: String

        # @return [String] API token.
        attribute :token
        validates :token, presence: true, type: String

        # @return [:started, :finished, :failed] State of the deployment.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:started, :finished, :failed], :message=>"%{value} needs to be :started, :finished, :failed"}

        # @return [String, nil] Name of affected host name. Can be a list.
        attribute :hosts
        validates :hosts, type: String

        # @return [Object, nil] The environment name, typically 'production', 'staging', etc.
        attribute :env

        # @return [Object, nil] The person responsible for the deployment.
        attribute :owner

        # @return [Object, nil] Free text description of the deployment.
        attribute :description

        # @return [String, nil] Base URL of the API server.
        attribute :url
        validates :url, type: String

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
