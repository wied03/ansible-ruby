# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt/RHV permissions.
      class Ovirt_permission_facts < Base
        # @return [String, nil] Username of the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.
        attribute :user_name
        validates :user_name, type: String

        # @return [Object, nil] Name of the group to manage.
        attribute :group_name

        # @return [String] Authorization provider of the user/group. In previous versions of oVirt/RHV known as domain.
        attribute :authz_name
        validates :authz_name, presence: true, type: String

        # @return [Object, nil] Namespace of the authorization provider, where user/group resides.
        attribute :namespace
      end
    end
  end
end
