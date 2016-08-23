# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rollbar_deployment < Base
        # @return [String] Your project access token.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] Name of the environment being deployed, e.g. 'production'.
        attribute :environment
        validates :environment, presence: true, type: String

        # @return [Array<Float>] Revision number/sha being deployed.
        attribute :revision, flat_array: true
        validates :revision, presence: true, type: TypeGeneric.new(Float)

        # @return [String] User who deployed.
        attribute :user
        validates :user, type: String

        # @return [String] Rollbar username of the user who deployed.
        attribute :rollbar_user, flat_array: true
        validates :rollbar_user, type: String

        # @return [String] Deploy comment (e.g. what is being deployed).
        attribute :comment
        validates :comment, type: String

        # @return [String] Optional URL to submit the notification to.
        attribute :url
        validates :url, type: String

        # @return [String] If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end