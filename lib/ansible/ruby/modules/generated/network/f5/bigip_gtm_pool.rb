# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP GTM pools.
      class Bigip_gtm_pool < Base
        # @return [:present, :absent, :enabled, :disabled, nil] Pool state. When C(present), ensures that the pool is created and enabled. When C(absent), ensures that the pool is removed from the system. When C(enabled) or C(disabled), ensures that the pool is enabled or disabled (respectively) on the remote device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [:"round-robin", :"return-to-dns", :ratio, :topology, :"static-persistence", :"global-availability", :"virtual-server-capacity", :"least-connections", :"lowest-round-trip-time", :"fewest-hops", :"packet-rate", :cpu, :"completion-rate", :"quality-of-service", :"kilobytes-per-second", :"drop-packet", :"fallback-ip", :"virtual-server-score", nil] The load balancing mode that the system tries first.
        attribute :preferred_lb_method
        validates :preferred_lb_method, inclusion: {:in=>[:"round-robin", :"return-to-dns", :ratio, :topology, :"static-persistence", :"global-availability", :"virtual-server-capacity", :"least-connections", :"lowest-round-trip-time", :"fewest-hops", :"packet-rate", :cpu, :"completion-rate", :"quality-of-service", :"kilobytes-per-second", :"drop-packet", :"fallback-ip", :"virtual-server-score"], :message=>"%{value} needs to be :\"round-robin\", :\"return-to-dns\", :ratio, :topology, :\"static-persistence\", :\"global-availability\", :\"virtual-server-capacity\", :\"least-connections\", :\"lowest-round-trip-time\", :\"fewest-hops\", :\"packet-rate\", :cpu, :\"completion-rate\", :\"quality-of-service\", :\"kilobytes-per-second\", :\"drop-packet\", :\"fallback-ip\", :\"virtual-server-score\""}, allow_nil: true

        # @return [:"round-robin", :"return-to-dns", :none, :ratio, :topology, :"static-persistence", :"global-availability", :"virtual-server-capacity", :"packet-rate", :"drop-packet", :"fallback-ip", :"virtual-server-score", nil] The load balancing mode that the system tries if the C(preferred_lb_method) is unsuccessful in picking a pool.
        attribute :alternate_lb_method
        validates :alternate_lb_method, inclusion: {:in=>[:"round-robin", :"return-to-dns", :none, :ratio, :topology, :"static-persistence", :"global-availability", :"virtual-server-capacity", :"packet-rate", :"drop-packet", :"fallback-ip", :"virtual-server-score"], :message=>"%{value} needs to be :\"round-robin\", :\"return-to-dns\", :none, :ratio, :topology, :\"static-persistence\", :\"global-availability\", :\"virtual-server-capacity\", :\"packet-rate\", :\"drop-packet\", :\"fallback-ip\", :\"virtual-server-score\""}, allow_nil: true

        # @return [:"round-robin", :"return-to-dns", :ratio, :topology, :"static-persistence", :"global-availability", :"virtual-server-capacity", :"least-connections", :"lowest-round-trip-time", :"fewest-hops", :"packet-rate", :cpu, :"completion-rate", :"quality-of-service", :"kilobytes-per-second", :"drop-packet", :"fallback-ip", :"virtual-server-score", :none, nil] The load balancing mode that the system tries if both the C(preferred_lb_method) and C(alternate_lb_method)s are unsuccessful in picking a pool.
        attribute :fallback_lb_method
        validates :fallback_lb_method, inclusion: {:in=>[:"round-robin", :"return-to-dns", :ratio, :topology, :"static-persistence", :"global-availability", :"virtual-server-capacity", :"least-connections", :"lowest-round-trip-time", :"fewest-hops", :"packet-rate", :cpu, :"completion-rate", :"quality-of-service", :"kilobytes-per-second", :"drop-packet", :"fallback-ip", :"virtual-server-score", :none], :message=>"%{value} needs to be :\"round-robin\", :\"return-to-dns\", :ratio, :topology, :\"static-persistence\", :\"global-availability\", :\"virtual-server-capacity\", :\"least-connections\", :\"lowest-round-trip-time\", :\"fewest-hops\", :\"packet-rate\", :cpu, :\"completion-rate\", :\"quality-of-service\", :\"kilobytes-per-second\", :\"drop-packet\", :\"fallback-ip\", :\"virtual-server-score\", :none"}, allow_nil: true

        # @return [Object, nil] Specifies the IPv4, or IPv6 address of the server to which the system directs requests when it cannot use one of its pools to do so. Note that the system uses the fallback IP only if you select the C(fallback_ip) load balancing method.
        attribute :fallback_ip

        # @return [:a, :aaaa, :cname, :mx, :naptr, :srv, nil] The type of GTM pool that you want to create. On BIG-IP releases prior to version 12, this parameter is not required. On later versions of BIG-IP, this is a required parameter.
        attribute :type
        validates :type, inclusion: {:in=>[:a, :aaaa, :cname, :mx, :naptr, :srv], :message=>"%{value} needs to be :a, :aaaa, :cname, :mx, :naptr, :srv"}, allow_nil: true

        # @return [String] Name of the GTM pool.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Object, nil] Members to assign to the pool.,The order of the members in this list is the order that they will be listed in the pool.
        attribute :members

        # @return [Object, nil] Specifies the health monitors that the system currently uses to monitor this resource.,When C(availability_requirements.type) is C(require), you may only have a single monitor in the C(monitors) list.
        attribute :monitors

        # @return [Object, nil] Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.
        attribute :availability_requirements
      end
    end
  end
end
