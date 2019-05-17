# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OpenStack Projects. Projects can be created, updated or deleted using this module. A project will be updated if I(name) matches an existing project and I(state) is present. The value for I(name) cannot be updated without deleting and re-creating the project.
      class Os_project < Base
        # @return [String] Name for the project
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description for the project
        attribute :description
        validates :description, type: String

        # @return [String, nil] Domain id to create the project in if the cloud supports domains.
        attribute :domain_id
        validates :domain_id, type: String

        # @return [:yes, :no, nil] Is the project enabled
        attribute :enabled
        validates :enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
