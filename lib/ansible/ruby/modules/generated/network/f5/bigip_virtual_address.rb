# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage LTM virtual addresses on a BIG-IP.
      class Bigip_virtual_address < Base
        # @return [Object, nil] Name of the virtual address.,If this parameter is not provided, then the value of C(address) will be used.
        attribute :name

        # @return [String, nil] Virtual address. This value cannot be modified after it is set.,If you never created a virtual address, but did create virtual servers, then a virtual address for each virtual server was created automatically. The name of this virtual address is its IP address value.
        attribute :address
        validates :address, type: String

        # @return [String, nil] Netmask of the provided virtual address. This value cannot be modified after it is set.
        attribute :netmask
        validates :netmask, type: String

        # @return [Object, nil] Specifies the number of concurrent connections that the system allows on this virtual address.
        attribute :connection_limit

        # @return [:enabled, :disabled, nil] Specifies whether the system accepts ARP requests. When (disabled), specifies that the system does not accept ARP requests. Note that both ARP and ICMP Echo must be disabled in order for forwarding virtual servers using that virtual address to forward ICMP packets. If (enabled), then the packets are dropped.,Deprecated. Use the C(arp) parameter instead.,When creating a new virtual address, if this parameter is not specified, the default value is C(enabled).
        attribute :arp_state
        validates :arp_state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Symbol, nil] Specifies whether the system accepts ARP requests.,When C(no), specifies that the system does not accept ARP requests.,When C(yes), then the packets are dropped.,Note that both ARP and ICMP Echo must be disabled in order for forwarding virtual servers using that virtual address to forward ICMP packets.,When creating a new virtual address, if this parameter is not specified, the default value is C(yes).
        attribute :arp
        validates :arp, type: Symbol

        # @return [Object, nil] Specifies whether the system automatically deletes the virtual address with the deletion of the last associated virtual server. When C(disabled), specifies that the system leaves the virtual address even when all associated virtual servers have been deleted. When creating the virtual address, the default value is C(enabled).,C(enabled) and C(disabled) are deprecated and will be removed in Ansible 2.11. Instead, use known Ansible booleans such as C(yes) and C(no)
        attribute :auto_delete

        # @return [:enabled, :disabled, :selective, nil] Specifies how the systems sends responses to (ICMP) echo requests on a per-virtual address basis for enabling route advertisement. When C(enabled), the BIG-IP system intercepts ICMP echo request packets and responds to them directly. When C(disabled), the BIG-IP system passes ICMP echo requests through to the backend servers. When (selective), causes the BIG-IP system to internally enable or disable responses based on virtual server state; C(when_any_available), C(when_all_available, or C(always), regardless of the state of any virtual servers.
        attribute :icmp_echo
        validates :icmp_echo, inclusion: {:in=>[:enabled, :disabled, :selective], :message=>"%{value} needs to be :enabled, :disabled, :selective"}, allow_nil: true

        # @return [:present, :absent, :enabled, :disabled, nil] The virtual address state. If C(absent), an attempt to delete the virtual address will be made. This will only succeed if this virtual address is not in use by a virtual server. C(present) creates the virtual address and enables it. If C(enabled), enable the virtual address if it exists. If C(disabled), create the virtual address if needed, and set state to C(disabled).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [:always, :when_all_available, :when_any_available, nil] Specifies what routes of the virtual address the system advertises. When C(when_any_available), advertises the route when any virtual server is available. When C(when_all_available), advertises the route when all virtual servers are available. When (always), always advertises the route regardless of the virtual servers available.
        attribute :availability_calculation
        validates :availability_calculation, inclusion: {:in=>[:always, :when_all_available, :when_any_available], :message=>"%{value} needs to be :always, :when_all_available, :when_any_available"}, allow_nil: true

        # @return [Symbol, nil] Specifies whether the system uses route advertisement for this virtual address.,When disabled, the system does not advertise routes for this virtual address.,Deprecated. Use the C(route_advertisement) parameter instead.
        attribute :use_route_advertisement
        validates :use_route_advertisement, type: Symbol

        # @return [:disabled, :enabled, :always, :selective, :any, :all, nil] Specifies whether the system uses route advertisement for this virtual address.,When disabled, the system does not advertise routes for this virtual address.,The majority of these options are only supported on versions 13.0.0-HF1 or higher. On versions less than this, all choices expect C(disabled) will translate to C(enabled).,When C(always), the BIG-IP system will always advertise the route for the virtual address, regardless of availability status. This requires an C(enabled) virtual address.,When C(enabled), the BIG-IP system will advertise the route for the available virtual address, based on the calculation method in the availability calculation.,When C(disabled), the BIG-IP system will not advertise the route for the virtual address, regardless of the availability status.,When C(selective), you can also selectively enable ICMP echo responses, which causes the BIG-IP system to internally enable or disable responses based on virtual server state. Either C(any) virtual server, C(all) virtual servers, or C(always), regardless of the state of any virtual server.,When C(any), the BIG-IP system will advertise the route for the virtual address when any virtual server is available.,When C(all), the BIG-IP system will advertise the route for the virtual address when all virtual servers are available.
        attribute :route_advertisement
        validates :route_advertisement, inclusion: {:in=>[:disabled, :enabled, :always, :selective, :any, :all], :message=>"%{value} needs to be :disabled, :enabled, :always, :selective, :any, :all"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Object, nil] The traffic group for the virtual address. When creating a new address, if this value is not specified, the default of C(/Common/traffic-group-1) will be used.
        attribute :traffic_group

        # @return [Object, nil] The route domain of the C(address) that you want to use.,This value cannot be modified after it is set.
        attribute :route_domain

        # @return [Symbol, nil] Enables all BIG-IP systems in a device group to listen for and process traffic on the same virtual address.,Spanning for a virtual address occurs when you enable the C(spanning) option on a device and then sync the virtual address to the other members of the device group.,Spanning also relies on the upstream router to distribute application flows to the BIG-IP systems using ECMP routes. ECMP defines a route to the virtual address using distinct Floating self-IP addresses configured on each BIG-IP system.,You must also configure MAC masquerade addresses and disable C(arp) on the virtual address when Spanning is enabled.,When creating a new virtual address, if this parameter is not specified, the default valus is C(no).
        attribute :spanning
        validates :spanning, type: Symbol
      end
    end
  end
end
