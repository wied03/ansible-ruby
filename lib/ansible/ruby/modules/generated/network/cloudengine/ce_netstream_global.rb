# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages global parameters of NetStream on HUAWEI CloudEngine switches.
      class Ce_netstream_global < Base
        # @return [:ip, :vxlan, nil] Specifies the type of netstream global.
        attribute :type
        validates :type, inclusion: {:in=>[:ip, :vxlan], :message=>"%{value} needs to be :ip, :vxlan"}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Netstream global interface.
        attribute :interface
        validates :interface, presence: true

        # @return [Object, nil] Specifies the netstream sampler interval, length is 1 - 65535.
        attribute :sampler_interval

        # @return [:inbound, :outbound, nil] Specifies the netstream sampler direction.
        attribute :sampler_direction
        validates :sampler_direction, inclusion: {:in=>[:inbound, :outbound], :message=>"%{value} needs to be :inbound, :outbound"}, allow_nil: true

        # @return [:inbound, :outbound, nil] Specifies the netstream statistic direction.
        attribute :statistics_direction
        validates :statistics_direction, inclusion: {:in=>[:inbound, :outbound], :message=>"%{value} needs to be :inbound, :outbound"}, allow_nil: true

        # @return [Object, nil] Specifies the flexible netstream statistic record, length is 1 - 32.
        attribute :statistics_record

        # @return [16, 32, nil] Specifies the netstream index-switch.
        attribute :index_switch
        validates :index_switch, inclusion: {:in=>[16, 32], :message=>"%{value} needs to be 16, 32"}, allow_nil: true
      end
    end
  end
end
