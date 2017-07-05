# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to work with Border Gateway Protocol (BGP) related configurations. The operators used are overloaded to ensure control over switch BGP configurations. This module is invoked using method with asNumber as one of its arguments. The first level of the BGP configuration allows to set up an AS number, with the following attributes going into various configuration operations under the context of BGP. After passing this level, there are eight BGP arguments that will perform further configurations. They are bgpArg1, bgpArg2, bgpArg3, bgpArg4, bgpArg5, bgpArg6, bgpArg7, and bgpArg8. For more details on how to use these arguments, see [Overloaded Variables]. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run. For more information about this module from Lenovo and customizing it usage for your use cases, please visit U(http://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.switchmgt.ansible.doc%2Fcnos_bgp.html)
      class Cnos_bgp < Base
        # @return [Object] AS number
        attribute :asNum
        validates :asNum, presence: true

        # @return [:"address-family", :bestpath, :bgp, :"cluster-id", :confederation, :"enforce-first-as", :"fast-external-failover", :"graceful-restart", :"graceful-restart-helper", :"log-neighbor-changes", :"maxas-limit", :neighbor, :"router-id", :shutdown, :synchronization, :timers, :vrf] This is an overloaded bgp first argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :bgpArg1
        validates :bgpArg1, presence: true, inclusion: {:in=>[:"address-family", :bestpath, :bgp, :"cluster-id", :confederation, :"enforce-first-as", :"fast-external-failover", :"graceful-restart", :"graceful-restart-helper", :"log-neighbor-changes", :"maxas-limit", :neighbor, :"router-id", :shutdown, :synchronization, :timers, :vrf], :message=>"%{value} needs to be :\"address-family\", :bestpath, :bgp, :\"cluster-id\", :confederation, :\"enforce-first-as\", :\"fast-external-failover\", :\"graceful-restart\", :\"graceful-restart-helper\", :\"log-neighbor-changes\", :\"maxas-limit\", :neighbor, :\"router-id\", :shutdown, :synchronization, :timers, :vrf"}

        # @return [:"ipv4 or ipv6", :"always-compare-med", :"compare-confed-aspath", :"compare-routerid", :"dont-compare-originator-id", :"tie-break-on-age", :"as-path", :med, :identifier, :peers, nil] This is an overloaded bgp second argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :bgpArg2
        validates :bgpArg2, inclusion: {:in=>[:"ipv4 or ipv6", :"always-compare-med", :"compare-confed-aspath", :"compare-routerid", :"dont-compare-originator-id", :"tie-break-on-age", :"as-path", :med, :identifier, :peers], :message=>"%{value} needs to be :\"ipv4 or ipv6\", :\"always-compare-med\", :\"compare-confed-aspath\", :\"compare-routerid\", :\"dont-compare-originator-id\", :\"tie-break-on-age\", :\"as-path\", :med, :identifier, :peers"}, allow_nil: true

        # @return [:"aggregate-address", :"client-to-client", :dampening, :distance, :"maximum-paths", :network, :nexthop, :redistribute, :save, :synchronization, :"ignore or multipath-relax", :"confed or missing-as-worst or non-deterministic or remove-recv-med or remove-send-med", nil] This is an overloaded bgp third argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :bgpArg3
        validates :bgpArg3, inclusion: {:in=>[:"aggregate-address", :"client-to-client", :dampening, :distance, :"maximum-paths", :network, :nexthop, :redistribute, :save, :synchronization, :"ignore or multipath-relax", :"confed or missing-as-worst or non-deterministic or remove-recv-med or remove-send-med"], :message=>"%{value} needs to be :\"aggregate-address\", :\"client-to-client\", :dampening, :distance, :\"maximum-paths\", :network, :nexthop, :redistribute, :save, :synchronization, :\"ignore or multipath-relax\", :\"confed or missing-as-worst or non-deterministic or remove-recv-med or remove-send-med\""}, allow_nil: true

        # @return [:"Aggregate prefix", :"Reachability Half-life time", :"route-map", :"Distance for routes external", :"ebgp or ibgp", :"IP prefix <network>", :"IP prefix <network>/<length>", :synchronization, :"Delay value", :direct, :ospf, :static, :memory, nil] This is an overloaded bgp fourth argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :bgpArg4
        validates :bgpArg4, inclusion: {:in=>[:"Aggregate prefix", :"Reachability Half-life time", :"route-map", :"Distance for routes external", :"ebgp or ibgp", :"IP prefix <network>", :"IP prefix <network>/<length>", :synchronization, :"Delay value", :direct, :ospf, :static, :memory], :message=>"%{value} needs to be :\"Aggregate prefix\", :\"Reachability Half-life time\", :\"route-map\", :\"Distance for routes external\", :\"ebgp or ibgp\", :\"IP prefix <network>\", :\"IP prefix <network>/<length>\", :synchronization, :\"Delay value\", :direct, :ospf, :static, :memory"}, allow_nil: true

        # @return [:"as-set", :"summary-only", :"Value to start reusing a route", :"Distance for routes internal", :"Supported multipath numbers", :backdoor, :map, :"route-map", nil] This is an overloaded bgp fifth argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :bgpArg5
        validates :bgpArg5, inclusion: {:in=>[:"as-set", :"summary-only", :"Value to start reusing a route", :"Distance for routes internal", :"Supported multipath numbers", :backdoor, :map, :"route-map"], :message=>"%{value} needs to be :\"as-set\", :\"summary-only\", :\"Value to start reusing a route\", :\"Distance for routes internal\", :\"Supported multipath numbers\", :backdoor, :map, :\"route-map\""}, allow_nil: true

        # @return [:"summary-only", :"as-set", :"route-map name", :"Value to start suppressing a route", :"Distance for local routes", :"Network mask", :"Pointer to route-map entries", nil] This is an overloaded bgp sixth argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :bgpArg6
        validates :bgpArg6, inclusion: {:in=>[:"summary-only", :"as-set", :"route-map name", :"Value to start suppressing a route", :"Distance for local routes", :"Network mask", :"Pointer to route-map entries"], :message=>"%{value} needs to be :\"summary-only\", :\"as-set\", :\"route-map name\", :\"Value to start suppressing a route\", :\"Distance for local routes\", :\"Network mask\", :\"Pointer to route-map entries\""}, allow_nil: true

        # @return [:"Maximum duration to suppress a stable route(minutes)", :backdoor, :"route-map", :"Name of the route map", nil] This is an overloaded bgp seventh argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :bgpArg7
        validates :bgpArg7, inclusion: {:in=>[:"Maximum duration to suppress a stable route(minutes)", :backdoor, :"route-map", :"Name of the route map"], :message=>"%{value} needs to be :\"Maximum duration to suppress a stable route(minutes)\", :backdoor, :\"route-map\", :\"Name of the route map\""}, allow_nil: true

        # @return [:"Un-reachability Half-life time for the penalty(minutes)", :backdoor, nil] This is an overloaded bgp eigth argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :bgpArg8
        validates :bgpArg8, inclusion: {:in=>[:"Un-reachability Half-life time for the penalty(minutes)", :backdoor], :message=>"%{value} needs to be :\"Un-reachability Half-life time for the penalty(minutes)\", :backdoor"}, allow_nil: true
      end
    end
  end
end
