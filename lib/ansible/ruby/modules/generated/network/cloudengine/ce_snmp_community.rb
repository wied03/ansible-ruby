# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP community configuration on HUAWEI CloudEngine switches.
      class Ce_snmp_community < Base
        # @return [Object, nil] Access control list number.
        attribute :acl_number

        # @return [Object, nil] Unique name to identify the community.
        attribute :community_name

        # @return [:read, :write, nil] Access right read or write.
        attribute :access_right
        validates :access_right, inclusion: {:in=>[:read, :write], :message=>"%{value} needs to be :read, :write"}, allow_nil: true

        # @return [Object, nil] Mib view name.
        attribute :community_mib_view

        # @return [Object, nil] Unique name to identify the SNMPv3 group.
        attribute :group_name

        # @return [:noAuthNoPriv, :authentication, :privacy, nil] Security level indicating whether to use authentication and encryption.
        attribute :security_level
        validates :security_level, inclusion: {:in=>[:noAuthNoPriv, :authentication, :privacy], :message=>"%{value} needs to be :noAuthNoPriv, :authentication, :privacy"}, allow_nil: true

        # @return [Object, nil] Mib view name for read.
        attribute :read_view

        # @return [Object, nil] Mib view name for write.
        attribute :write_view

        # @return [Object, nil] Mib view name for notification.
        attribute :notify_view

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
