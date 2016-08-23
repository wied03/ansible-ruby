# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Seport < Base
        # @return [Array<String>] Ports or port ranges, separated by a comma
        attribute :ports, flat_array: true
        validates :ports, presence: true, type: TypeGeneric.new(String)

        # @return [:tcp, :udp] Protocol for the specified port.
        attribute :proto
        validates :proto, presence: true, inclusion: {:in=>[:tcp, :udp], :message=>"%{value} needs to be :tcp, :udp"}

        # @return [String] SELinux type for the specified port.
        attribute :setype
        validates :setype, presence: true, type: String

        # @return [:present, :absent] Desired boolean value.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [TrueClass, nil] Reload SELinux policy after commit.
        attribute :reload
        validates :reload, type: TrueClass
      end
    end
  end
end
