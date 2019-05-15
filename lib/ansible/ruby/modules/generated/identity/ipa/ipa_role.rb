# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete a role within FreeIPA server using FreeIPA API
      class Ipa_role < Base
        # @return [Object] Role name.,Can not be changed as it is the unique identifier.
        attribute :cn
        validates :cn, presence: true

        # @return [String, nil] A description of this role-group.
        attribute :description
        validates :description, type: String

        # @return [Array<String>, String, nil] List of group names assign to this role.,If an empty list is passed all assigned groups will be unassigned from the role.,If option is omitted groups will not be checked or changed.,If option is passed all assigned groups that are not passed will be unassigned from the role.
        attribute :group
        validates :group, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of host names to assign.,If an empty list is passed all assigned hosts will be unassigned from the role.,If option is omitted hosts will not be checked or changed.,If option is passed all assigned hosts that are not passed will be unassigned from the role.
        attribute :host
        validates :host, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of host group names to assign.,If an empty list is passed all assigned host groups will be removed from the role.,If option is omitted host groups will not be checked or changed.,If option is passed all assigned hostgroups that are not passed will be unassigned from the role.
        attribute :hostgroup
        validates :hostgroup, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of privileges granted to the role.,If an empty list is passed all assigned privileges will be removed.,If option is omitted privileges will not be checked or changed.,If option is passed all assigned privileges that are not passed will be removed.
        attribute :privilege
        validates :privilege, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of service names to assign.,If an empty list is passed all assigned services will be removed from the role.,If option is omitted services will not be checked or changed.,If option is passed all assigned services that are not passed will be removed from the role.
        attribute :service
        validates :service, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] List of user names to assign.,If an empty list is passed all assigned users will be removed from the role.,If option is omitted users will not be checked or changed.
        attribute :user
        validates :user, type: TypeGeneric.new(String)
      end
    end
  end
end
