# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage permissions of users/groups in oVirt
      class Ovirt_permissions < Base
        # @return [String, nil] Name of the the role to be assigned to user/group on specific object.
        attribute :role
        validates :role, type: String

        # @return [:present, :absent, nil] Should the permission be present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] ID of the object where the permissions should be managed.
        attribute :object_id

        # @return [String, nil] Name of the object where the permissions should be managed.
        attribute :object_name
        validates :object_name, type: String

        # @return [:data_center, :cluster, :host, :storage_domain, :network, :disk, :vm, :vm_pool, :template, :cpu_profile, :disk_profile, :vnic_profile, :system, nil] The object where the permissions should be managed.
        attribute :object_type
        validates :object_type, inclusion: {:in=>[:data_center, :cluster, :host, :storage_domain, :network, :disk, :vm, :vm_pool, :template, :cpu_profile, :disk_profile, :vnic_profile, :system], :message=>"%{value} needs to be :data_center, :cluster, :host, :storage_domain, :network, :disk, :vm, :vm_pool, :template, :cpu_profile, :disk_profile, :vnic_profile, :system"}, allow_nil: true

        # @return [String, nil] Username of the the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.,Note that if user don't exist in the system this module will fail, you should ensure the user exists by using M(ovirt_users) module.
        attribute :user_name
        validates :user_name, type: String

        # @return [Object, nil] Name of the the group to manage.,Note that if group don't exist in the system this module will fail, you should ensure the group exists by using M(ovirt_groups) module.
        attribute :group_name

        # @return [String] Authorization provider of the user/group. In previous versions of oVirt known as domain.
        attribute :authz_name
        validates :authz_name, presence: true, type: String

        # @return [Object, nil] Namespace of the authorization provider, where user/group resides.
        attribute :namespace
      end
    end
  end
end
