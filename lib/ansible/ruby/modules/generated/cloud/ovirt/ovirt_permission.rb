# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage permissions of users/groups in oVirt/RHV.
      class Ovirt_permission < Base
        # @return [String, nil] Name of the role to be assigned to user/group on specific object.
        attribute :role
        validates :role, type: String

        # @return [:absent, :present, nil] Should the permission be present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] ID of the object where the permissions should be managed.
        attribute :object_id

        # @return [String, nil] Name of the object where the permissions should be managed.
        attribute :object_name
        validates :object_name, type: String

        # @return [:cluster, :cpu_profile, :data_center, :disk, :disk_profile, :host, :network, :storage_domain, :system, :template, :vm, :vm_pool, :vnic_profile, nil] The object where the permissions should be managed.
        attribute :object_type
        validates :object_type, inclusion: {:in=>[:cluster, :cpu_profile, :data_center, :disk, :disk_profile, :host, :network, :storage_domain, :system, :template, :vm, :vm_pool, :vnic_profile], :message=>"%{value} needs to be :cluster, :cpu_profile, :data_center, :disk, :disk_profile, :host, :network, :storage_domain, :system, :template, :vm, :vm_pool, :vnic_profile"}, allow_nil: true

        # @return [String, nil] Username of the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.,Note that if user does not exist in the system this module will fail, you should ensure the user exists by using M(ovirt_users) module.
        attribute :user_name
        validates :user_name, type: String

        # @return [Object, nil] Name of the group to manage.,Note that if group does not exist in the system this module will fail, you should ensure the group exists by using M(ovirt_groups) module.
        attribute :group_name

        # @return [String] Authorization provider of the user/group.
        attribute :authz_name
        validates :authz_name, presence: true, type: String

        # @return [Object, nil] Namespace of the authorization provider, where user/group resides.
        attribute :namespace

        # @return [String, nil] Name of the quota to assign permission. Works only with C(object_type) I(data_center).
        attribute :quota_name
        validates :quota_name, type: String
      end
    end
  end
end
