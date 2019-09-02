# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # View GitHub issue for a given repository.
      class Github_issue < Base
        # @return [String] Name of repository from which issue needs to be retrieved.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String] Name of the GitHub organization in which the repository is hosted.
        attribute :organization
        validates :organization, presence: true, type: String

        # @return [Integer] Issue number for which information is required.
        attribute :issue
        validates :issue, presence: true, type: Integer

        # @return [get_status, nil] Get various details about issue depending upon action specified.
        attribute :action
        validates :action, expression_inclusion: {:in=>[["get_status"]], :message=>"%{value} needs to be [\"get_status\"]"}, allow_nil: true
      end
    end
  end
end
