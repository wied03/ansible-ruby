# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage power management of hosts in oVirt.
      class Ovirt_host_pm < Base
        # @return [String] Name of the the host to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the host be present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Address of the power management interface.
        attribute :address
        validates :address, type: String

        # @return [String, nil] Username to be used to connect to power management interface.
        attribute :username
        validates :username, type: String

        # @return [String, nil] Password of the user specified in C(username) parameter.
        attribute :password
        validates :password, type: String

        # @return [String, nil] Type of the power management. oVirt predefined values are I(drac5), I(ipmilan), I(rsa), I(bladecenter), I(alom), I(apc), I(apc_snmp), I(eps), I(wti), I(rsb), I(cisco_ucs), I(drac7), I(hpblade), I(ilo), I(ilo2), I(ilo3), I(ilo4), I(ilo_ssh), but user can have defined custom type.
        attribute :type
        validates :type, type: String

        # @return [Integer, nil] Power management interface port.
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] Power management slot.
        attribute :slot

        # @return [Hash, nil] Dictionary of additional fence agent options.,Additional information about options can be found at U(https://fedorahosted.org/cluster/wiki/FenceArguments).
        attribute :options
        validates :options, type: Hash

        # @return [Object, nil] If (true) options will be encrypted when send to agent.
        attribute :encrypt_options

        # @return [Object, nil] Integer value specifying, by default it's added at the end.
        attribute :order
      end
    end
  end
end
