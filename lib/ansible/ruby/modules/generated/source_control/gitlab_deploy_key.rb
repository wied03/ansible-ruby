# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds, updates and removes project deploy keys
      class Gitlab_deploy_key < Base
        # @return [String] GitLab API url, e.g. https://gitlab.example.com/api
        attribute :api_url
        validates :api_url, presence: true, type: String

        # @return [String, nil] The oauth key provided by GitLab. One of access_token or private_token is required. See https://docs.gitlab.com/ee/api/oauth2.html
        attribute :access_token
        validates :access_token, type: String

        # @return [Object, nil] Personal access token to use. One of private_token or access_token is required. See https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html
        attribute :private_token

        # @return [String] Numeric project id or name of project in the form of group/name
        attribute :project
        validates :project, presence: true, type: String

        # @return [String] Deploy key's title
        attribute :title
        validates :title, presence: true, type: String

        # @return [String] Deploy key
        attribute :key
        validates :key, presence: true, type: String

        # @return [:yes, :no, nil] Whether this key can push to the project
        attribute :can_push
        validates :can_push, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent] When C(present) the deploy key added to the project if it doesn't exist.,When C(absent) it will be removed from the project if it exists
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
