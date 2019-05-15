# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP community configuration.
      class Nxos_snmp_community < Base
        # @return [String] Case-sensitive community string.
        attribute :community
        validates :community, presence: true, type: String

        # @return [:ro, :rw, nil] Access type for community.
        attribute :access
        validates :access, inclusion: {:in=>[:ro, :rw], :message=>"%{value} needs to be :ro, :rw"}, allow_nil: true

        # @return [String, nil] Group to which the community belongs.
        attribute :group
        validates :group, type: String

        # @return [Object, nil] ACL name to filter snmp requests or keyword 'default'.
        attribute :acl

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
