# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage local users on an ESXi host
      class Vmware_local_user_manager < Base
        # @return [String] The local user name to be changed.
        attribute :local_user_name
        validates :local_user_name, presence: true, type: String

        # @return [Object, nil] The password to be set.
        attribute :local_user_password

        # @return [Object, nil] Description for the user.
        attribute :local_user_description

        # @return [:present, :absent, nil] Indicate desired state of the user. If the user already exists when C(state=present), the user info is updated
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
