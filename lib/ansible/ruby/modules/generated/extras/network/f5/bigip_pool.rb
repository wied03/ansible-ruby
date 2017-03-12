# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM pools via iControl SOAP API
      class Bigip_pool < Base
        # @return [:present, :absent, nil] Pool/pool member state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Pool name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Partition of pool/pool member
        attribute :partition
        validates :partition, type: String

        # @return [:round_robin, :ratio_member, :least_connection_member, :observed_member, :predictive_member, :ratio_node_address, :least_connection_node_address, :fastest_node_address, :observed_node_address, :predictive_node_address, :dynamic_ratio, :fastest_app_response, :least_sessions, :dynamic_ratio_member, :l3_addr, :weighted_least_connection_member, :weighted_least_connection_node_address, :ratio_session, :ratio_least_connection_member, :ratio_least_connection_node_address, nil] Load balancing method
        attribute :lb_method
        validates :lb_method, inclusion: {:in=>[:round_robin, :ratio_member, :least_connection_member, :observed_member, :predictive_member, :ratio_node_address, :least_connection_node_address, :fastest_node_address, :observed_node_address, :predictive_node_address, :dynamic_ratio, :fastest_app_response, :least_sessions, :dynamic_ratio_member, :l3_addr, :weighted_least_connection_member, :weighted_least_connection_node_address, :ratio_session, :ratio_least_connection_member, :ratio_least_connection_node_address], :message=>"%{value} needs to be :round_robin, :ratio_member, :least_connection_member, :observed_member, :predictive_member, :ratio_node_address, :least_connection_node_address, :fastest_node_address, :observed_node_address, :predictive_node_address, :dynamic_ratio, :fastest_app_response, :least_sessions, :dynamic_ratio_member, :l3_addr, :weighted_least_connection_member, :weighted_least_connection_node_address, :ratio_session, :ratio_least_connection_member, :ratio_least_connection_node_address"}, allow_nil: true

        # @return [:and_list, :m_of_n, nil] Monitor rule type when monitors > 1
        attribute :monitor_type
        validates :monitor_type, inclusion: {:in=>[:and_list, :m_of_n], :message=>"%{value} needs to be :and_list, :m_of_n"}, allow_nil: true

        # @return [Object, nil] Monitor quorum value when monitor_type is m_of_n
        attribute :quorum

        # @return [Object, nil] Monitor template name list. Always use the full path to the monitor.
        attribute :monitors

        # @return [Integer, nil] Sets the ramp-up time (in seconds) to gradually ramp up the load on newly added or freshly detected up pool members
        attribute :slow_ramp_time
        validates :slow_ramp_time, type: Integer

        # @return [Object, nil] Sets the number of times the system tries to contact a pool member after a passive failure
        attribute :reselect_tries

        # @return [:none, :reset, :drop, :reselect, nil] Sets the action to take when node goes down in pool
        attribute :service_down_action
        validates :service_down_action, inclusion: {:in=>[:none, :reset, :drop, :reselect], :message=>"%{value} needs to be :none, :reset, :drop, :reselect"}, allow_nil: true

        # @return [String, nil] Pool member IP
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] Pool member port
        attribute :port
        validates :port, type: Integer
      end
    end
  end
end
