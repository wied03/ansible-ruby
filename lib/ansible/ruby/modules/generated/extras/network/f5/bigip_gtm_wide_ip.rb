# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bigip_gtm_wide_ip < Base
        # @return [String] BIG-IP host
        attribute :server
        validates :server, presence: true, type: String

        # @return [String] BIG-IP username
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] BIG-IP password
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] LB method of wide ip
        attribute :lb_method
        validates :lb_method, presence: true, inclusion: {:in=>[:return_to_dns, :null, :round_robin, :ratio, :topology, :static_persist, :global_availability, :vs_capacity, :least_conn, :lowest_rtt, :lowest_hops, :packet_rate, :cpu, :hit_ratio, :qos, :bps, :drop_packet, :explicit_ip, :connection_rate, :vs_score], :message=>"%{value} needs to be :return_to_dns, :null, :round_robin, :ratio, :topology, :static_persist, :global_availability, :vs_capacity, :least_conn, :lowest_rtt, :lowest_hops, :packet_rate, :cpu, :hit_ratio, :qos, :bps, :drop_packet, :explicit_ip, :connection_rate, :vs_score"}

        # @return [String] Wide IP name
        attribute :wide_ip
        validates :wide_ip, presence: true, type: String
      end
    end
  end
end
