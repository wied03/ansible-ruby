# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages IGMP interface configuration settings.
      class Nxos_igmp_interface < Base
        # @return [String] The full interface name for IGMP configuration. e.g. I(Ethernet1/2).
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [2, 3, :default, nil] IGMP version. It can be 2 or 3 or keyword 'default'.
        attribute :version
        validates :version, expression_inclusion: {:in=>[2, 3, :default], :message=>"%{value} needs to be 2, 3, :default"}, allow_nil: true

        # @return [Integer, nil] Query interval used when the IGMP process starts up. The range is from 1 to 18000 or keyword 'default'. The default is 31.
        attribute :startup_query_interval
        validates :startup_query_interval, type: Integer

        # @return [Object, nil] Query count used when the IGMP process starts up. The range is from 1 to 10 or keyword 'default'. The default is 2.
        attribute :startup_query_count

        # @return [Object, nil] Sets the robustness variable. Values can range from 1 to 7 or keyword 'default'. The default is 2.
        attribute :robustness

        # @return [Object, nil] Sets the querier timeout that the software uses when deciding to take over as the querier. Values can range from 1 to 65535 seconds or keyword 'default'. The default is 255 seconds.
        attribute :querier_timeout

        # @return [Object, nil] Sets the response time advertised in IGMP queries. Values can range from 1 to 25 seconds or keyword 'default'. The default is 10 seconds.
        attribute :query_mrt

        # @return [Object, nil] Sets the frequency at which the software sends IGMP host query messages. Values can range from 1 to 18000 seconds or keyword 'default'. The default is 125 seconds.
        attribute :query_interval

        # @return [Object, nil] Sets the query interval waited after sending membership reports before the software deletes the group state. Values can range from 1 to 25 seconds or keyword 'default'. The default is 1 second.
        attribute :last_member_qrt

        # @return [Object, nil] Sets the number of times that the software sends an IGMP query in response to a host leave message. Values can range from 1 to 5 or keyword 'default'. The default is 2.
        attribute :last_member_query_count

        # @return [Object, nil] Sets the group membership timeout for IGMPv2. Values can range from 3 to 65,535 seconds or keyword 'default'. The default is 260 seconds.
        attribute :group_timeout

        # @return [Symbol, nil] Configures report-link-local-groups. Enables sending reports for groups in 224.0.0.0/24. Reports are always sent for nonlink local groups. By default, reports are not sent for link local groups.
        attribute :report_llg
        validates :report_llg, type: Symbol

        # @return [Symbol, nil] Enables the device to remove the group entry from the multicast routing table immediately upon receiving a leave message for the group. Use this command to minimize the leave latency of IGMPv2 group memberships on a given IGMP interface because the device does not send group-specific queries. The default is disabled.
        attribute :immediate_leave
        validates :immediate_leave, type: Symbol

        # @return [Object, nil] Configure a routemap for static outgoing interface (OIF) or keyword 'default'.
        attribute :oif_routemap

        # @return [Object, nil] This argument is deprecated, please use oif_ps instead. Configure a prefix for static outgoing interface (OIF).
        attribute :oif_prefix

        # @return [Object, nil] This argument is deprecated, please use oif_ps instead. Configure a source for static outgoing interface (OIF).
        attribute :oif_source

        # @return [Array<Hash>, Hash, nil] Configure prefixes and sources for static outgoing interface (OIF). This is a list of dict where each dict has source and prefix defined or just prefix if source is not needed. The specified values will be configured on the device and if any previous prefix/sources exist, they will be removed. Keyword 'default' is also accpted which removes all existing prefix/sources.
        attribute :oif_ps
        validates :oif_ps, type: TypeGeneric.new(Hash)

        # @return [Symbol, nil] Restart IGMP. This is NOT idempotent as this is action only.
        attribute :restart
        validates :restart, type: Symbol

        # @return [:present, :absent, :default, nil] Manages desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :default], :message=>"%{value} needs to be :present, :absent, :default"}, allow_nil: true
      end
    end
  end
end
