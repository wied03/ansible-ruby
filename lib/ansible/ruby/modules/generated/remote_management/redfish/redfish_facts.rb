# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Builds Redfish URIs locally and sends them to remote OOB controllers to get information back.
      # Information retrieved is placed in a location specified by the user.
      class Redfish_facts < Base
        # @return [String, nil] List of categories to execute on OOB controller
        attribute :category
        validates :category, type: String

        # @return [Array<String>, String, nil] List of commands to execute on OOB controller
        attribute :command
        validates :command, type: TypeGeneric.new(String)

        # @return [String] Base URI of OOB controller
        attribute :baseuri
        validates :baseuri, presence: true, type: String

        # @return [String] User for authentication with OOB controller
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Password for authentication with OOB controller
        attribute :password
        validates :password, presence: true, type: String
      end
    end
  end
end
