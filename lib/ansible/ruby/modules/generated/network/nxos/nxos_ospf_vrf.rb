# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages a VRF for an OSPF router.
      class Nxos_ospf_vrf < Base
        # @return [String, nil] Name of the resource instance. Valid value is a string. The name 'default' is a valid VRF representing the global OSPF.
        attribute :vrf
        validates :vrf, type: String

        # @return [Integer] Name of the OSPF instance.
        attribute :ospf
        validates :ospf, presence: true, type: Integer

        # @return [Object, nil] Router Identifier (ID) of the OSPF router VRF instance.
        attribute :router_id

        # @return [Object, nil] Specify the default Metric value. Valid values are an integer or the keyword 'default'.
        attribute :default_metric

        # @return [:log, :detail, :default, nil] Controls the level of log messages generated whenever a neighbor changes state. Valid values are 'log', 'detail', and 'default'.
        attribute :log_adjacency
        validates :log_adjacency, expression_inclusion: {:in=>[:log, :detail, :default], :message=>"%{value} needs to be :log, :detail, :default"}, allow_nil: true

        # @return [Integer, nil] Specify the start interval for rate-limiting Link-State Advertisement (LSA) generation. Valid values are an integer, in milliseconds, or the keyword 'default'.
        attribute :timer_throttle_lsa_start
        validates :timer_throttle_lsa_start, type: Integer

        # @return [Integer, nil] Specify the hold interval for rate-limiting Link-State Advertisement (LSA) generation. Valid values are an integer, in milliseconds, or the keyword 'default'.
        attribute :timer_throttle_lsa_hold
        validates :timer_throttle_lsa_hold, type: Integer

        # @return [Integer, nil] Specify the max interval for rate-limiting Link-State Advertisement (LSA) generation. Valid values are an integer, in milliseconds, or the keyword 'default'.
        attribute :timer_throttle_lsa_max
        validates :timer_throttle_lsa_max, type: Integer

        # @return [Integer, nil] Specify initial Shortest Path First (SPF) schedule delay. Valid values are an integer, in milliseconds, or the keyword 'default'.
        attribute :timer_throttle_spf_start
        validates :timer_throttle_spf_start, type: Integer

        # @return [Integer, nil] Specify minimum hold time between Shortest Path First (SPF) calculations. Valid values are an integer, in milliseconds, or the keyword 'default'.
        attribute :timer_throttle_spf_hold
        validates :timer_throttle_spf_hold, type: Integer

        # @return [Integer, nil] Specify the maximum wait time between Shortest Path First (SPF) calculations. Valid values are an integer, in milliseconds, or the keyword 'default'.
        attribute :timer_throttle_spf_max
        validates :timer_throttle_spf_max, type: Integer

        # @return [Object, nil] Specifies the reference bandwidth used to assign OSPF cost. Valid values are an integer, in Mbps, or the keyword 'default'.
        attribute :auto_cost

        # @return [Symbol, nil] Setting to C(yes) will suppress routing update on interface.
        attribute :passive_interface
        validates :passive_interface, type: Symbol

        # @return [:present, :absent, nil] State of ospf vrf configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
