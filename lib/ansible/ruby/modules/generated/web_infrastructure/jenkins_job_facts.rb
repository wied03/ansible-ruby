# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to query the facts about which Jenkins jobs which already exists.
      class Jenkins_job_facts < Base
        # @return [String, nil] Exact name of the Jenkins job to fetch facts about.
        attribute :name
        validates :name, type: String

        # @return [String, nil] A shell glob of Jenkins job names to fetch facts about.
        attribute :glob
        validates :glob, type: String

        # @return [String, nil] Only fetch jobs with the given status color.
        attribute :color
        validates :color, type: String

        # @return [String, nil] Password to authenticate with the Jenkins server.,This is a required parameter, if C(token) is not provided.
        attribute :password
        validates :password, type: String

        # @return [String, nil] API token used to authenticate with the Jenkins server.,This is a required parameter, if C(password) is not provided.
        attribute :token
        validates :token, type: String

        # @return [String, nil] URL where the Jenkins server is accessible.
        attribute :url
        validates :url, type: String

        # @return [String, nil] User to authenticate with the Jenkins server.
        attribute :user
        validates :user, type: String

        # @return [Boolean, nil] If set to C(False), the SSL certificates will not be validated.,This should only set to C(False) used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
