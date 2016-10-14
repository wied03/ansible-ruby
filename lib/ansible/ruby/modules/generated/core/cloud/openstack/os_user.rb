# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OpenStack Identity users. Users can be created, updated or deleted using this module. A user will be updated if I(name) matches an existing user and I(state) is present. The value for I(name) cannot be updated without deleting and re-creating the user.
      class Os_user < Base
        # @return [String] Username for the user
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Password for the user,Required when I(state) is present
        attribute :password
        validates :password, type: String

        # @return [String, nil] Email address for the user
        attribute :email
        validates :email, type: String

        # @return [String, nil] Project name or ID that the user should be associated with by default
        attribute :default_project
        validates :default_project, type: String

        # @return [String, nil] Domain to create the user in if the cloud supports domains
        attribute :domain
        validates :domain, type: String

        # @return [Boolean, nil] Is the user enabled
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
