# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds, updates and removes project hooks
      class Gitlab_hooks < Base
        # @return [String] GitLab API url, e.g. https://gitlab.example.com/api
        attribute :api_url
        validates :api_url, presence: true, type: String

        # @return [String, nil] The oauth key provided by GitLab. One of access_token or private_token is required. See https://docs.gitlab.com/ee/api/oauth2.html
        attribute :access_token
        validates :access_token, type: String

        # @return [Object, nil] Personal access token to use. One of private_token or access_token is required. See https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html
        attribute :private_token

        # @return [String, Integer] Numeric project id or name of project in the form of group/name
        attribute :project
        validates :project, presence: true, type: MultipleTypes.new(String, Integer)

        # @return [String] The url that you want GitLab to post to, this is used as the primary key for updates and deletion.
        attribute :hook_url
        validates :hook_url, presence: true, type: String

        # @return [:present, :absent] When C(present) the hook will be updated to match the input or created if it doesn't exist. When C(absent) it will be deleted if it exists.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:yes, :no, nil] Trigger hook on push events
        attribute :push_events
        validates :push_events, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Trigger hook on issues events
        attribute :issues_events
        validates :issues_events, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Trigger hook on merge requests events
        attribute :merge_requests_events
        validates :merge_requests_events, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Trigger hook on tag push events
        attribute :tag_push_events
        validates :tag_push_events, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Trigger hook on note events
        attribute :note_events
        validates :note_events, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Trigger hook on job events
        attribute :job_events
        validates :job_events, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Trigger hook on pipeline events
        attribute :pipeline_events
        validates :pipeline_events, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Trigger hook on wiki events
        attribute :wiki_page_events
        validates :wiki_page_events, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether GitLab will do SSL verification when triggering the hook
        attribute :enable_ssl_verification
        validates :enable_ssl_verification, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Secret token to validate hook messages at the receiver.,If this is present it will always result in a change as it cannot be retrieved from GitLab.,Will show up in the X-Gitlab-Token HTTP request header
        attribute :token
        validates :token, type: String
      end
    end
  end
end
