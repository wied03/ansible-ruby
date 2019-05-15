# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of IGMP protocol params on Mellanox ONYX network devices.
      class Onyx_igmp < Base
        # @return [:enabled, :disabled] IGMP state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}

        # @return [Object, nil] Configure the last member query interval, range 1-25
        attribute :last_member_query_interval

        # @return [Object, nil] Configure the mrouter timeout, range 60-600
        attribute :mrouter_timeout

        # @return [Object, nil] Configure the host port purge timeout, range 130-1225
        attribute :port_purge_timeout

        # @return [:enabled, :disabled, nil] Configure ip igmp snooping proxy and enable reporting mode
        attribute :proxy_reporting
        validates :proxy_reporting, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Configure the report suppression interval, range 1-25
        attribute :report_suppression_interval

        # @return [:flood, :"forward-to-mrouter-ports", nil] Configure the unregistered multicast mode Flood unregistered multicast Forward unregistered multicast to mrouter ports
        attribute :unregistered_multicast
        validates :unregistered_multicast, inclusion: {:in=>[:flood, :"forward-to-mrouter-ports"], :message=>"%{value} needs to be :flood, :\"forward-to-mrouter-ports\""}, allow_nil: true

        # @return [:V2, :V3, nil] Configure the default operating version of the IGMP snooping
        attribute :default_version
        validates :default_version, inclusion: {:in=>[:V2, :V3], :message=>"%{value} needs to be :V2, :V3"}, allow_nil: true
      end
    end
  end
end
