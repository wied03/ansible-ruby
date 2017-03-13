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

        # @return [Integer, nil] ACL name to filter snmp requests.
        attribute :acl
        validates :acl, type: Integer

        # @return [:present, :absent] Manage the state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Boolean, nil] Specify to use or not the complete running configuration for module operations.
        attribute :include_defaults
        validates :include_defaults, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Configuration string to be used for module operations. If not specified, the module will use the current running configuration.
        attribute :config

        # @return [Boolean, nil] Specify to save the running configuration after module operations.
        attribute :save
        validates :save, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
