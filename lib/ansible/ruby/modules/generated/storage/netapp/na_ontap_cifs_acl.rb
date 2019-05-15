# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy or modify cifs-share-access-controls on ONTAP
      class Na_ontap_cifs_acl < Base
        # @return [:no_access, :read, :change, :full_control, nil] -"The access rights that the user or group has on the defined CIFS share."
        attribute :permission
        validates :permission, inclusion: {:in=>[:no_access, :read, :change, :full_control], :message=>"%{value} needs to be :no_access, :read, :change, :full_control"}, allow_nil: true

        # @return [String] The name of the cifs-share-access-control to manage.
        attribute :share_name
        validates :share_name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the specified CIFS share acl should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true

        # @return [String] The user or group name for which the permissions are listed.
        attribute :user_or_group
        validates :user_or_group, presence: true, type: String
      end
    end
  end
end
