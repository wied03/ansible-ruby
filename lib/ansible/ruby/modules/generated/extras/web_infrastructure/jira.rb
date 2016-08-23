# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Jira < Base
        # @return [String] Base URI for the JIRA instance
        attribute :uri
        validates :uri, presence: true, type: String

        # @return [:create, :comment, :edit, :fetch, :transition] The operation to perform.
        attribute :operation
        validates :operation, presence: true, inclusion: {:in=>[:create, :comment, :edit, :fetch, :transition], :message=>"%{value} needs to be :create, :comment, :edit, :fetch, :transition"}

        # @return [String] The username to log-in with.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] The password to log-in with.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] The project for this operation. Required for issue creation.
        attribute :project
        validates :project, type: String

        # @return [String, nil] The issue summary, where appropriate.
        attribute :summary
        validates :summary, type: String

        # @return [String, nil] The issue description, where appropriate.
        attribute :description
        validates :description, type: String

        # @return [String, nil] The issue type, for issue creation.
        attribute :issuetype
        validates :issuetype, type: String

        # @return [String, nil] An existing issue key to operate on.
        attribute :issue
        validates :issue, type: String

        # @return [String, nil] The comment text to add.
        attribute :comment
        validates :comment, type: String

        # @return [String, nil] The desired status; only relevant for the transition operation.
        attribute :status
        validates :status, type: String

        # @return [String, nil] Sets the assignee on create or transition operations. Note not all transitions will allow this.
        attribute :assignee
        validates :assignee, type: String

        # @return [Hash, nil] This is a free-form data structure that can contain arbitrary data. This is passed directly to the JIRA REST API (possibly after merging with other required data, as when passed to create). See examples for more information, and the JIRA REST API for the structure required for various fields.
        attribute :fields
        validates :fields, type: Hash
      end
    end
  end
end
