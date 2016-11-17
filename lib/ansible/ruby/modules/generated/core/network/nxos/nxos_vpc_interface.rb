# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages interface VPC configuration
      class Nxos_vpc_interface < Base
        # @return [Integer] Group number of the portchannel that will be configured.
        attribute :portchannel
        validates :portchannel, presence: true, type: Integer

        # @return [Integer, nil] VPC group/id that will be configured on associated portchannel.
        attribute :vpc
        validates :vpc, type: Integer

        # @return [Object, nil] Set to true/false for peer link config on associated portchannel.
        attribute :peer_link

        # @return [:present, :absent] Manages desired state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
