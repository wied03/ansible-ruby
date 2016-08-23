# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_project < Base
        # @return [String] Name for the project
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Description for the project
        attribute :description
        validates :description, type: String

        # @return [String] Domain id to create the project in if the cloud supports domains
        attribute :domain_id
        validates :domain_id, type: String

        # @return [TrueClass] Is the project enabled
        attribute :enabled
        validates :enabled, type: TrueClass

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
