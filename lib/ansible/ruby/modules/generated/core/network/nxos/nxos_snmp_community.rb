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

        # @return [Integer, nil] ACL name to filter snmp requests.
        attribute :acl
        validates :acl, type: Integer

        # @return [:present, :absent] Manage the state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
