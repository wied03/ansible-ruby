# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Taiga_issue < Base
        # @return [String] The hostname of the Taiga instance.
        attribute :taiga_host
        validates :taiga_host, type: String

        # @return [String] Name of the project containing the issue. Must exist previously.
        attribute :project
        validates :project, presence: true, type: String

        # @return [String] The issue subject.
        attribute :subject
        validates :subject, presence: true, type: String

        # @return [String] The issue type. Must exist previously.
        attribute :issue_type
        validates :issue_type, presence: true, type: String

        # @return [String] The issue priority. Must exist previously.
        attribute :priority
        validates :priority, type: String

        # @return [String] The issue status. Must exist previously.
        attribute :status
        validates :status, type: String

        # @return [String] The issue severity. Must exist previously.
        attribute :severity
        validates :severity, type: String

        # @return [String] The issue description.
        attribute :description
        validates :description, type: String

        # @return [String] Path to a file to be attached to the issue.
        attribute :attachment
        validates :attachment, type: String

        # @return [String] A string describing the file to be attached to the issue.
        attribute :attachment_description
        validates :attachment_description, type: String

        # @return [Array] A lists of tags to be assigned to the issue.
        attribute :tags
        validates :tags, type: Array

        # @return [:present, :absent, nil] Whether the issue should be present or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
