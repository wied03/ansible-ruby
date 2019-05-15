# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Layer 3 attributes for IPv4 and IPv6 interfaces on HUAWEI CloudEngine switches.
      class Ce_ip_interface < Base
        # @return [Object] Full name of interface, i.e. 40GE1/0/22, vlanif10.
        attribute :interface
        validates :interface, presence: true

        # @return [Object, nil] IPv4 or IPv6 Address.
        attribute :addr

        # @return [Object, nil] Subnet mask for IPv4 or IPv6 Address in decimal format.
        attribute :mask

        # @return [:v4, :v6, nil] IP address version.
        attribute :version
        validates :version, inclusion: {:in=>[:v4, :v6], :message=>"%{value} needs to be :v4, :v6"}, allow_nil: true

        # @return [:main, :sub, nil] Specifies an address type. The value is an enumerated type. main, primary IP address. sub, secondary IP address.
        attribute :ipv4_type
        validates :ipv4_type, inclusion: {:in=>[:main, :sub], :message=>"%{value} needs to be :main, :sub"}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
