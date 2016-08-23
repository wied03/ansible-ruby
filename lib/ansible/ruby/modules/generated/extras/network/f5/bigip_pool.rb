# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bigip_pool < Base
        # @return [Object] BIG-IP host
        attribute :server
        validates :server, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [Object] BIG-IP username
        attribute :user
        validates :user, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [Object] BIG-IP password
        attribute :password
        validates :password, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites.  Prior to 2.0, this module would always validate on python >= 2.7.9 and never validate on python <= 2.7.8
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Pool/pool member state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Pool name
        attribute :name
        validates :name, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] Partition of pool/pool member
        attribute :partition
        validates :partition, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [String] Load balancing method
        attribute :lb_method
        validates :lb_method, inclusion: {:in=>[:round_robin, :ratio_member, :least_connection_member, :observed_member, :predictive_member, :ratio_node_address, :least_connection_node_address, :fastest_node_address, :observed_node_address, :predictive_node_address, :dynamic_ratio, :fastest_app_response, :least_sessions, :dynamic_ratio_member, :l3_addr, :unknown, :weighted_least_connection_member, :weighted_least_connection_node_address, :ratio_session, :ratio_least_connection_member, :ratio_least_connection_node_address], :message=>"%{value} needs to be :round_robin, :ratio_member, :least_connection_member, :observed_member, :predictive_member, :ratio_node_address, :least_connection_node_address, :fastest_node_address, :observed_node_address, :predictive_node_address, :dynamic_ratio, :fastest_app_response, :least_sessions, :dynamic_ratio_member, :l3_addr, :unknown, :weighted_least_connection_member, :weighted_least_connection_node_address, :ratio_session, :ratio_least_connection_member, :ratio_least_connection_node_address"}, allow_nil: true

        # @return [Object] Monitor rule type when monitors > 1
        attribute :monitor_type
        validates :monitor_type, inclusion: {:in=>[:and_list, :m_of_n], :message=>"%{value} needs to be :and_list, :m_of_n"}, allow_nil: true

        # @return [Object] Monitor quorum value when monitor_type is m_of_n
        attribute :quorum
        validates :quorum, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [Object] Monitor template name list. Always use the full path to the monitor.
        attribute :monitors
        validates :monitors, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [Object] Sets the ramp-up time (in seconds) to gradually ramp up the load on newly added or freshly detected up pool members
        attribute :slow_ramp_time
        validates :slow_ramp_time, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [Object] Sets the action to take when node goes down in pool
        attribute :service_down_action
        validates :service_down_action, inclusion: {:in=>[:none, :reset, :drop, :reselect], :message=>"%{value} needs to be :none, :reset, :drop, :reselect"}, allow_nil: true

        # @return [Object] Pool member IP
        attribute :host
        validates :host, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [Object] Pool member port
        attribute :port
        validates :port, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true
      end
    end
  end
end
