# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP user configuration.
      class Nxos_snmp_user < Base
        # @return [String] Name of the user.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String, nil] Group to which the user will belong to. If state = present, and the user is existing, the group is added to the user. If the user is not existing, user entry is created with this group argument. If state = absent, only the group is removed from the user entry. However, to maintain backward compatibility, if the existing user belongs to only one group, and if group argument is same as the existing user's group, then the user entry also is deleted.
        attribute :group
        validates :group, type: String

        # @return [:md5, :sha, nil] Authentication parameters for the user.
        attribute :authentication
        validates :authentication, inclusion: {:in=>[:md5, :sha], :message=>"%{value} needs to be :md5, :sha"}, allow_nil: true

        # @return [String, nil] Authentication password when using md5 or sha. This is not idempotent
        attribute :pwd
        validates :pwd, type: String

        # @return [Object, nil] Privacy password for the user. This is not idempotent
        attribute :privacy

        # @return [Object, nil] Enables AES-128 bit encryption when using privacy password.
        attribute :encrypt

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
