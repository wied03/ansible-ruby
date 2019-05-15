# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage local roles on an ESXi host
      class Vmware_local_role_manager < Base
        # @return [String] The local role name to be managed.
        attribute :local_role_name
        validates :local_role_name, presence: true, type: String

        # @return [Object, nil] The list of privileges that role needs to have.,Please see U(https://docs.vmware.com/en/VMware-vSphere/6.0/com.vmware.vsphere.security.doc/GUID-ED56F3C4-77D0-49E3-88B6-B99B8B437B62.html)
        attribute :local_privilege_ids

        # @return [:present, :absent, nil] Indicate desired state of the role.,If the role already exists when C(state=present), the role info is updated.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] If set to C(False) then prevents the role from being removed if any permissions are using it.
        attribute :force_remove
        validates :force_remove, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
