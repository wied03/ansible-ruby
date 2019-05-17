# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage LTM virtual servers on a BIG-IP.
      class Bigip_virtual_server < Base
        # @return [:present, :absent, :enabled, :disabled, nil] The virtual server state. If C(absent), delete the virtual server if it exists. C(present) creates the virtual server and enable it. If C(enabled), enable the virtual server if it exists. If C(disabled), create the virtual server if needed, and set state to C(disabled).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [:standard, :"forwarding-l2", :"forwarding-ip", :"performance-http", :"performance-l4", :stateless, :reject, :dhcp, :internal, :"message-routing", nil] Specifies the network service provided by this virtual server.,When creating a new virtual server, if this parameter is not provided, the default will be C(standard).,This value cannot be changed after it is set.,When C(standard), specifies a virtual server that directs client traffic to a load balancing pool and is the most basic type of virtual server. When you first create the virtual server, you assign an existing default pool to it. From then on, the virtual server automatically directs traffic to that default pool.,When C(forwarding-l2), specifies a virtual server that shares the same IP address as a node in an associated VLAN.,When C(forwarding-ip), specifies a virtual server like other virtual servers, except that the virtual server has no pool members to load balance. The virtual server simply forwards the packet directly to the destination IP address specified in the client request.,When C(performance-http), specifies a virtual server with which you associate a Fast HTTP profile. Together, the virtual server and profile increase the speed at which the virtual server processes HTTP requests.,When C(performance-l4), specifies a virtual server with which you associate a Fast L4 profile. Together, the virtual server and profile increase the speed at which the virtual server processes layer 4 requests.,When C(stateless), specifies a virtual server that accepts traffic matching the virtual server address and load balances the packet to the pool members without attempting to match the packet to a pre-existing connection in the connection table. New connections are immediately removed from the connection table. This addresses the requirement for one-way UDP traffic that needs to be processed at very high throughput levels, for example, load balancing syslog traffic to a pool of syslog servers. Stateless virtual servers are not suitable for processing traffic that requires stateful tracking, such as TCP traffic. Stateless virtual servers do not support iRules, persistence, connection mirroring, rateshaping, or SNAT automap.,When C(reject), specifies that the BIG-IP system rejects any traffic destined for the virtual server IP address.,When C(dhcp), specifies a virtual server that relays Dynamic Host Control Protocol (DHCP) client requests for an IP address to one or more DHCP servers, and provides DHCP server responses with an available IP address for the client.,When C(internal), specifies a virtual server that supports modification of HTTP requests and responses. Internal virtual servers enable usage of ICAP (Internet Content Adaptation Protocol) servers to modify HTTP requests and responses by creating and applying an ICAP profile and adding Request Adapt or Response Adapt profiles to the virtual server.,When C(message-routing), specifies a virtual server that uses a SIP application protocol and functions in accordance with a SIP session profile and SIP router profile.
        attribute :type
        validates :type, inclusion: {:in=>[:standard, :"forwarding-l2", :"forwarding-ip", :"performance-http", :"performance-l4", :stateless, :reject, :dhcp, :internal, :"message-routing"], :message=>"%{value} needs to be :standard, :\"forwarding-l2\", :\"forwarding-ip\", :\"performance-http\", :\"performance-l4\", :stateless, :reject, :dhcp, :internal, :\"message-routing\""}, allow_nil: true

        # @return [String] Virtual server name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Destination IP of the virtual server.,Required when C(state) is C(present) and virtual server does not exist.,When C(type) is C(internal), this parameter is ignored. For all other types, it is required.
        attribute :destination
        validates :destination, type: String

        # @return [Object, nil] Specifies an IP address or network from which the virtual server accepts traffic.,The virtual server accepts clients only from one of these IP addresses.,For this setting to function effectively, specify a value other than 0.0.0.0/0 or ::/0 (that is, any/0, any6/0).,In order to maximize utility of this setting, specify the most specific address prefixes covering all customer addresses and no others.,Specify the IP address in Classless Inter-Domain Routing (CIDR) format; address/prefix, where the prefix length is in bits. For example, for IPv4, 10.0.0.1/32 or 10.0.0.0/24, and for IPv6, ffe1::0020/64 or 2001:ed8:77b5:2:10:10:100:42/64.
        attribute :source

        # @return [Integer, nil] Port of the virtual server. Required when C(state) is C(present) and virtual server does not exist.,If you do not want to specify a particular port, use the value C(0). The result is that the virtual server will listen on any port.,When C(type) is C(dhcp), this module will force the C(port) parameter to be C(67).,When C(type) is C(internal), this module will force the C(port) parameter to be C(0).,In addition to specifying a port number, a select number of service names may also be provided.,The string C(ftp) may be substituted for for port C(21).,The string C(http) may be substituted for for port C(80).,The string C(https) may be substituted for for port C(443).,The string C(telnet) may be substituted for for port C(23).,The string C(smtp) may be substituted for for port C(25).,The string C(snmp) may be substituted for for port C(161).,The string C(snmp-trap) may be substituted for for port C(162).,The string C(ssh) may be substituted for for port C(22).,The string C(tftp) may be substituted for for port C(69).,The string C(isakmp) may be substituted for for port C(500).,The string C(mqtt) may be substituted for for port C(1883).,The string C(mqtt-tls) may be substituted for for port C(8883).
        attribute :port
        validates :port, type: Integer

        # @return [Array<String>, String, nil] List of profiles (HTTP, ClientSSL, ServerSSL, etc) to apply to both sides of the connection (client-side and server-side).,If you only want to apply a particular profile to the client-side of the connection, specify C(client-side) for the profile's C(context).,If you only want to apply a particular profile to the server-side of the connection, specify C(server-side) for the profile's C(context).,If C(context) is not provided, it will default to C(all).,If you want to remove a profile from the list of profiles currently active on the virtual, then simply remove it from the C(profiles) list. See examples for an illustration of this.,If you want to add a profile to the list of profiles currently active on the virtual, then simply add it to the C(profiles) list. See examples for an illustration of this.,B(Profiles matter). This module will fail to configure a BIG-IP if you mix up your profiles, or, if you attempt to set an IP protocol which your current, or new, profiles do not support. Both this module, and BIG-IP, will tell you when you are wrong, with an error resembling C(lists profiles incompatible with its protocol).,If you are unsure what correct profile combinations are, then have a BIG-IP available to you in which you can make changes and copy what the correct combinations are.
        attribute :profiles
        validates :profiles, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of rules to be applied in priority order.,If you want to remove existing iRules, specify a single empty value; C(""). See the documentation for an example.,When C(type) is C(dhcp), this parameter will be ignored.,When C(type) is C(stateless), this parameter will be ignored.,When C(type) is C(reject), this parameter will be ignored.,When C(type) is C(internal), this parameter will be ignored.
        attribute :irules
        validates :irules, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of VLANs to be enabled. When a VLAN named C(all) is used, all VLANs will be allowed. VLANs can be specified with or without the leading partition. If the partition is not specified in the VLAN, then the C(partition) option of this module will be used.,This parameter is mutually exclusive with the C(disabled_vlans) parameter.
        attribute :enabled_vlans
        validates :enabled_vlans, type: TypeGeneric.new(String)

        # @return [Object, nil] List of VLANs to be disabled. If the partition is not specified in the VLAN, then the C(partition) option of this module will be used.,This parameter is mutually exclusive with the C(enabled_vlans) parameters.
        attribute :disabled_vlans

        # @return [String, nil] Default pool for the virtual server.,If you want to remove the existing pool, specify an empty value; C(""). See the documentation for an example.,When creating a new virtual server, and C(type) is C(stateless), this parameter is required.,If C(type) is C(stateless), the C(pool) that is used must not have any members which define a C(rate_limit).
        attribute :pool
        validates :pool, type: String

        # @return [Array<String>, String, nil] Specifies the policies for the virtual server.,When C(type) is C(dhcp), this parameter will be ignored.,When C(type) is C(reject), this parameter will be ignored.,When C(type) is C(internal), this parameter will be ignored.
        attribute :policies
        validates :policies, type: TypeGeneric.new(String)

        # @return [String, nil] Source network address policy.,When C(type) is C(dhcp), this parameter is ignored.,When C(type) is C(reject), this parameter will be ignored.,When C(type) is C(internal), this parameter will be ignored.,The name of a SNAT pool (eg "/Common/snat_pool_name") can be specified to enable SNAT with the specific pool.,To remove SNAT, specify the word C(none).,To specify automap, use the word C(automap).
        attribute :snat
        validates :snat, type: String

        # @return [Object, nil] Default Profile which manages the session persistence.,If you want to remove the existing default persistence profile, specify an empty value; C(""). See the documentation for an example.,When C(type) is C(dhcp), this parameter will be ignored.
        attribute :default_persistence_profile

        # @return [String, nil] Virtual server description.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Specifies the persistence profile you want the system to use if it cannot use the specified default persistence profile.,If you want to remove the existing fallback persistence profile, specify an empty value; C(""). See the documentation for an example.,When C(type) is C(dhcp), this parameter will be ignored.
        attribute :fallback_persistence_profile

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Hash, nil] Arbitrary key/value pairs that you can attach to a pool. This is useful in situations where you might want to annotate a virtual to me managed by Ansible.,Key names will be stored as strings; this includes names that are numbers.,Values for all of the keys will be stored as strings; this includes values that are numbers.,Data will be persisted, not ephemeral.
        attribute :metadata
        validates :metadata, type: Hash

        # @return [Symbol, nil] Specifies, when C(enabled), that the system translates the address of the virtual server.,When C(disabled), specifies that the system uses the address without translation.,This option is useful when the system is load balancing devices that have the same IP address.,When creating a new virtual server, the default is C(enabled).
        attribute :address_translation
        validates :address_translation, type: Symbol

        # @return [Symbol, nil] Specifies, when C(enabled), that the system translates the port of the virtual server.,When C(disabled), specifies that the system uses the port without translation. Turning off port translation for a virtual server is useful if you want to use the virtual server to load balance connections to any service.,When creating a new virtual server, the default is C(enabled).
        attribute :port_translation
        validates :port_translation, type: Symbol

        # @return [:ah, :bna, :esp, :etherip, :gre, :icmp, :ipencap, :ipv6, :"ipv6-auth", :"ipv6-crypt", :"ipv6-icmp", :"isp-ip", :mux, :ospf, :sctp, :tcp, :udp, :udplite, nil] Specifies a network protocol name you want the system to use to direct traffic on this virtual server.,When creating a new virtual server, if this parameter is not specified, the default is C(tcp).,The Protocol setting is not available when you select Performance (HTTP) as the Type.,The value of this argument can be specified in either it's numeric value, or, for convenience, in a select number of named values. Refer to C(choices) for examples.,For a list of valid IP protocol numbers, refer to this page https://en.wikipedia.org/wiki/List_of_IP_protocol_numbers,When C(type) is C(dhcp), this module will force the C(ip_protocol) parameter to be C(17) (UDP).
        attribute :ip_protocol
        validates :ip_protocol, inclusion: {:in=>[:ah, :bna, :esp, :etherip, :gre, :icmp, :ipencap, :ipv6, :"ipv6-auth", :"ipv6-crypt", :"ipv6-icmp", :"isp-ip", :mux, :ospf, :sctp, :tcp, :udp, :udplite], :message=>"%{value} needs to be :ah, :bna, :esp, :etherip, :gre, :icmp, :ipencap, :ipv6, :\"ipv6-auth\", :\"ipv6-crypt\", :\"ipv6-icmp\", :\"isp-ip\", :mux, :ospf, :sctp, :tcp, :udp, :udplite"}, allow_nil: true

        # @return [Object, nil] Applies the specify AFM policy to the virtual in an enforcing way.,When creating a new virtual, if this parameter is not specified, the enforced policy is disabled.
        attribute :firewall_enforced_policy

        # @return [Object, nil] Applies the specify AFM policy to the virtual in an enforcing way.,A staged policy shows the results of the policy rules in the log, while not actually applying the rules to traffic.,When creating a new virtual, if this parameter is not specified, the staged policy is disabled.
        attribute :firewall_staged_policy

        # @return [Object, nil] Specifies the log profile applied to the virtual server.,To make use of this feature, the AFM module must be licensed and provisioned.,The C(Log all requests) and C(Log illegal requests) are mutually exclusive and therefore, this module will raise an error if the two are specified together.
        attribute :security_log_profiles

        # @return [Object, nil] Specify the Firewall NAT policies for the virtual server.,You can specify one or more NAT policies to use.,The most specific policy is used. For example, if you specify that the virtual server use the device policy and the route domain policy, the route domain policy overrides the device policy.
        attribute :security_nat_policy
      end
    end
  end
end
