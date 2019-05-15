# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM pools via iControl REST API.
      class Bigip_pool < Base
        # @return [Object, nil] Specifies descriptive text that identifies the pool.
        attribute :description

        # @return [String] Pool name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:"dynamic-ratio-member", :"dynamic-ratio-node", :"fastest-app-response", :"fastest-node", :"least-connections-member", :"least-connections-node", :"least-sessions", :"observed-member", :"observed-node", :"predictive-member", :"predictive-node", :"ratio-least-connections-member", :"ratio-least-connections-node", :"ratio-member", :"ratio-node", :"ratio-session", :"round-robin", :"weighted-least-connections-member", :"weighted-least-connections-node", nil] Load balancing method. When creating a new pool, if this value is not specified, the default of C(round-robin) will be used.
        attribute :lb_method
        validates :lb_method, inclusion: {:in=>[:"dynamic-ratio-member", :"dynamic-ratio-node", :"fastest-app-response", :"fastest-node", :"least-connections-member", :"least-connections-node", :"least-sessions", :"observed-member", :"observed-node", :"predictive-member", :"predictive-node", :"ratio-least-connections-member", :"ratio-least-connections-node", :"ratio-member", :"ratio-node", :"ratio-session", :"round-robin", :"weighted-least-connections-member", :"weighted-least-connections-node"], :message=>"%{value} needs to be :\"dynamic-ratio-member\", :\"dynamic-ratio-node\", :\"fastest-app-response\", :\"fastest-node\", :\"least-connections-member\", :\"least-connections-node\", :\"least-sessions\", :\"observed-member\", :\"observed-node\", :\"predictive-member\", :\"predictive-node\", :\"ratio-least-connections-member\", :\"ratio-least-connections-node\", :\"ratio-member\", :\"ratio-node\", :\"ratio-session\", :\"round-robin\", :\"weighted-least-connections-member\", :\"weighted-least-connections-node\""}, allow_nil: true

        # @return [:and_list, :m_of_n, :single, nil] Monitor rule type when C(monitors) is specified.,When creating a new pool, if this value is not specified, the default of 'and_list' will be used.,When C(single) ensures that all specified monitors are checked, but additionally includes checks to make sure you only specified a single monitor.,When C(and_list) ensures that B(all) monitors are checked.,When C(m_of_n) ensures that C(quorum) of C(monitors) are checked. C(m_of_n) B(requires) that a C(quorum) of 1 or greater be set either in the playbook, or already existing on the device.,Both C(single) and C(and_list) are functionally identical since BIG-IP considers all monitors as "a list".
        attribute :monitor_type
        validates :monitor_type, inclusion: {:in=>[:and_list, :m_of_n, :single], :message=>"%{value} needs to be :and_list, :m_of_n, :single"}, allow_nil: true

        # @return [Integer, nil] Monitor quorum value when C(monitor_type) is C(m_of_n).,Quorum must be a value of 1 or greater when C(monitor_type) is C(m_of_n).
        attribute :quorum
        validates :quorum, type: Integer

        # @return [Array<String>, String, nil] Monitor template name list. If the partition is not provided as part of the monitor name, then the C(partition) option will be used instead.
        attribute :monitors
        validates :monitors, type: TypeGeneric.new(String)

        # @return [Integer, nil] Sets the ramp-up time (in seconds) to gradually ramp up the load on newly added or freshly detected up pool members.
        attribute :slow_ramp_time
        validates :slow_ramp_time, type: Integer

        # @return [Object, nil] Sets the number of times the system tries to contact a pool member after a passive failure.
        attribute :reselect_tries

        # @return [:none, :reset, :drop, :reselect, nil] Sets the action to take when node goes down in pool.
        attribute :service_down_action
        validates :service_down_action, inclusion: {:in=>[:none, :reset, :drop, :reselect], :message=>"%{value} needs to be :none, :reset, :drop, :reselect"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:absent, :present, nil] When C(present), guarantees that the pool exists with the provided attributes.,When C(absent), removes the pool from the system.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Hash, nil] Arbitrary key/value pairs that you can attach to a pool. This is useful in situations where you might want to annotate a pool to me managed by Ansible.,Key names will be stored as strings; this includes names that are numbers.,Values for all of the keys will be stored as strings; this includes values that are numbers.,Data will be persisted, not ephemeral.
        attribute :metadata
        validates :metadata, type: Hash

        # @return [Object, nil] Specifies whether the system load balances traffic according to the priority number assigned to the pool member.,When creating a new pool, if this parameter is not specified, the default of C(0) will be used.,To disable this setting, provide the value C(0).,Once you enable this setting, you can specify pool member priority when you create a new pool or on a pool member's properties screen.,The system treats same-priority pool members as a group.,To enable priority group activation, provide a number from C(0) to C(65535) that represents the minimum number of members that must be available in one priority group before the system directs traffic to members in a lower priority group.,When a sufficient number of members become available in the higher priority group, the system again directs traffic to the higher priority group.
        attribute :priority_group_activation
      end
    end
  end
end
