# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows the addition and removal of local, service and domain users, and domain groups from a local group.
      class Win_group_membership < Base
        # @return [String] Name of the local group to manage membership on.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String] A list of members to ensure are present/absent from the group.,Accepts local users as .\username, and SERVERNAME\username.,Accepts domain users and groups as DOMAIN\username and username@DOMAIN.,Accepts service users as NT AUTHORITY\username.,Accepts all local, domain and service user types as username, favoring domain lookups when in a domain.
        attribute :members
        validates :members, presence: true, type: TypeGeneric.new(String)

        # @return [:absent, :present, nil] Desired state of the members in the group.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
