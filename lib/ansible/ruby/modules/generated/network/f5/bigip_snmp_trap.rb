# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manipulate SNMP trap information on a BIG-IP.
      class Bigip_snmp_trap < Base
        # @return [String] Name of the SNMP configuration endpoint.
        attribute :name
        validates :name, presence: true, type: String

        # @return [1, :"2c", nil] Specifies to which Simple Network Management Protocol (SNMP) version the trap destination applies.
        attribute :snmp_version
        validates :snmp_version, inclusion: {:in=>[1, :"2c"], :message=>"%{value} needs to be 1, :\"2c\""}, allow_nil: true

        # @return [String, nil] Specifies the community name for the trap destination.
        attribute :community
        validates :community, type: String

        # @return [String, nil] Specifies the address for the trap destination. This can be either an IP address or a hostname.
        attribute :destination
        validates :destination, type: String

        # @return [Integer, nil] Specifies the port for the trap destination.
        attribute :port
        validates :port, type: Integer

        # @return [:other, :management, :default, nil] Specifies the name of the trap network. This option is not supported in versions of BIG-IP < 12.1.0. If used on versions < 12.1.0, it will simply be ignored.,The value C(default) was removed in BIG-IP version 13.1.0. Specifying this value when configuring a BIG-IP will cause the module to stop and report an error. The usual remedy is to choose one of the other options, such as C(management).
        attribute :network
        validates :network, inclusion: {:in=>[:other, :management, :default], :message=>"%{value} needs to be :other, :management, :default"}, allow_nil: true

        # @return [:present, :absent, nil] When C(present), ensures that the resource exists.,When C(absent), ensures that the resource does not exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
