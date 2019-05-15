# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Fetch metadata about GitHub Releases
      class Github_release < Base
        # @return [String, nil] GitHub Personal Access Token for authenticating
        attribute :token
        validates :token, type: String

        # @return [String] The GitHub account that owns the repository
        attribute :user
        validates :user, presence: true, type: String

        # @return [String, nil] The GitHub account password for the user
        attribute :password
        validates :password, type: String

        # @return [String] Repository name
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [:latest_release, :create_release] Action to perform
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:latest_release, :create_release], :message=>"%{value} needs to be :latest_release, :create_release"}

        # @return [String, nil] Tag name when creating a release. Required when using action is set to C(create_release).
        attribute :tag
        validates :tag, type: String

        # @return [String, nil] Target of release when creating a release
        attribute :target
        validates :target, type: String

        # @return [String, nil] Name of release when creating a release
        attribute :name
        validates :name, type: String

        # @return [String, nil] Description of the release when creating a release
        attribute :body
        validates :body, type: String

        # @return [String, nil] Sets if the release is a draft or not. (boolean)
        attribute :draft
        validates :draft, type: String

        # @return [String, nil] Sets if the release is a prerelease or not. (boolean)
        attribute :prerelease
        validates :prerelease, type: String
      end
    end
  end
end
