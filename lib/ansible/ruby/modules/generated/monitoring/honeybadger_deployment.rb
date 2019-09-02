# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Notify Honeybadger.io about app deployments (see http://docs.honeybadger.io/article/188-deployment-tracking)
      class Honeybadger_deployment < Base
        # @return [String] API token.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] The environment name, typically 'production', 'staging', etc.
        attribute :environment
        validates :environment, presence: true, type: String

        # @return [String, nil] The username of the person doing the deployment
        attribute :user
        validates :user, type: String

        # @return [String, nil] URL of the project repository
        attribute :repo
        validates :repo, type: String

        # @return [String, nil] A hash, number, tag, or other identifier showing what revision was deployed
        attribute :revision
        validates :revision, type: String

        # @return [String, nil] Optional URL to submit the notification to.
        attribute :url
        validates :url, type: String

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
