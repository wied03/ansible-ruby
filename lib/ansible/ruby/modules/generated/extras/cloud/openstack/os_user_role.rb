# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Grant and revoke roles in either project or domain context for OpenStack Identity Users.
      class Os_user_role < Base
        # @return [String] Name or ID for the role.
        attribute :role
        validates :role, presence: true, type: String

        # @return [String, nil] Name or ID for the user. If I(user) is not specified, then I(group) is required. Both may not be specified.
        attribute :user
        validates :user, type: String

        # @return [Object, nil] Name or ID for the group. Valid only with keystone version 3. If I(group) is not specified, then I(user) is required. Both may not be specified.
        attribute :group

        # @return [String, nil] Name or ID of the project to scope the role assocation to. If you are using keystone version 2, then this value is required.
        attribute :project
        validates :project, type: String

        # @return [String, nil] ID of the domain to scope the role association to. Valid only with keystone version 3, and required if I(project) is not specified.
        attribute :domain
        validates :domain, type: String

        # @return [:present, :absent, nil] Should the roles be present or absent on the user.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
