# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove Rundeck projects through HTTP API.
      class Rundeck_project < Base
        # @return [:present, :absent, nil] Create or remove Rundeck project.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Sets the project name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Sets the rundeck instance URL.
        attribute :url
        validates :url, presence: true, type: String

        # @return [Integer, nil] Sets the API version used by module.,API version must be at least 14.
        attribute :api_version
        validates :api_version, type: Integer

        # @return [String] Sets the token to authenticate against Rundeck API.
        attribute :token
        validates :token, presence: true, type: String
      end
    end
  end
end
