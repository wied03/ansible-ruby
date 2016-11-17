# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Jenkins jobs by using Jenkins REST API.
      class Jenkins_job < Base
        # @return [String, nil] config in XML format.,Required if job does not yet exist.,Mututally exclusive with C(enabled).,Considered if C(state=present).
        attribute :config
        validates :config, type: String

        # @return [Boolean, nil] Whether the job should be enabled or disabled.,Mututally exclusive with C(config).,Considered if C(state=present).
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Name of the Jenkins job.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Password to authenticate with the Jenkins server.
        attribute :password
        validates :password, type: String

        # @return [:present, :absent, nil] Attribute that specifies if the job has to be created or deleted.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] API token used to authenticate alternatively to password.
        attribute :token
        validates :token, type: String

        # @return [String, nil] Url where the Jenkins server is accessible.
        attribute :url
        validates :url, type: String

        # @return [String, nil] User to authenticate with the Jenkins server.
        attribute :user
        validates :user, type: String
      end
    end
  end
end
