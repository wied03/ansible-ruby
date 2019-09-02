# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, remove or set User Rights for a group or users or groups.
      # You can set user rights for both local and domain accounts.
      class Win_user_right < Base
        # @return [String] The name of the User Right as shown by the C(Constant Name) value from U(https://technet.microsoft.com/en-us/library/dd349804.aspx).,The module will return an error if the right is invalid.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String] A list of users or groups to add/remove on the User Right.,These can be in the form DOMAIN\user-group, user-group@DOMAIN.COM for domain users/groups.,For local users/groups it can be in the form user-group, .\user-group, SERVERNAME\user-group where SERVERNAME is the name of the remote server.,You can also add special local accounts like SYSTEM and others.
        attribute :users
        validates :users, presence: true, type: TypeGeneric.new(String)

        # @return [:add, :remove, :set, nil] C(add) will add the users/groups to the existing right.,C(remove) will remove the users/groups from the existing right.,C(set) will replace the users/groups of the existing right.
        attribute :action
        validates :action, expression_inclusion: {:in=>[:add, :remove, :set], :message=>"%{value} needs to be :add, :remove, :set"}, allow_nil: true
      end
    end
  end
end
