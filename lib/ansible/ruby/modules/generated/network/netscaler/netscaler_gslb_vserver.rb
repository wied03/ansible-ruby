# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure gslb vserver entities in Netscaler.
      class Netscaler_gslb_vserver < Base
        # @return [Object, nil] Name for the GSLB virtual server. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space, colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Can be changed after the virtual server is created.,Minimum length = 1
        attribute :name

        # @return [:HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :NNTP, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :RADIUS, :RDP, :RTSP, :MYSQL, :MSSQL, :ORACLE, nil] Protocol used by services bound to the virtual server.,
        attribute :servicetype
        validates :servicetype, inclusion: {:in=>[:HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :NNTP, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :RADIUS, :RDP, :RTSP, :MYSQL, :MSSQL, :ORACLE], :message=>"%{value} needs to be :HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :NNTP, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :RADIUS, :RDP, :RTSP, :MYSQL, :MSSQL, :ORACLE"}, allow_nil: true

        # @return [:A, :AAAA, :CNAME, :NAPTR, nil] DNS record type to associate with the GSLB virtual server's domain name.,Default value: A,Possible values = A, AAAA, CNAME, NAPTR
        attribute :dnsrecordtype
        validates :dnsrecordtype, inclusion: {:in=>[:A, :AAAA, :CNAME, :NAPTR], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :NAPTR"}, allow_nil: true

        # @return [:ROUNDROBIN, :LEASTCONNECTION, :LEASTRESPONSETIME, :SOURCEIPHASH, :LEASTBANDWIDTH, :LEASTPACKETS, :STATICPROXIMITY, :RTT, :CUSTOMLOAD, nil] Load balancing method for the GSLB virtual server.,Default value: LEASTCONNECTION,Possible values = ROUNDROBIN, LEASTCONNECTION, LEASTRESPONSETIME, SOURCEIPHASH, LEASTBANDWIDTH, LEASTPACKETS, STATICPROXIMITY, RTT, CUSTOMLOAD
        attribute :lbmethod
        validates :lbmethod, inclusion: {:in=>[:ROUNDROBIN, :LEASTCONNECTION, :LEASTRESPONSETIME, :SOURCEIPHASH, :LEASTBANDWIDTH, :LEASTPACKETS, :STATICPROXIMITY, :RTT, :CUSTOMLOAD], :message=>"%{value} needs to be :ROUNDROBIN, :LEASTCONNECTION, :LEASTRESPONSETIME, :SOURCEIPHASH, :LEASTBANDWIDTH, :LEASTPACKETS, :STATICPROXIMITY, :RTT, :CUSTOMLOAD"}, allow_nil: true

        # @return [:ROUNDROBIN, :LEASTCONNECTION, :LEASTRESPONSETIME, :SOURCEIPHASH, :LEASTBANDWIDTH, :LEASTPACKETS, :STATICPROXIMITY, :RTT, :CUSTOMLOAD, nil] Backup load balancing method. Becomes operational if the primary load balancing method fails or cannot be used. Valid only if the primary method is based on either round-trip time (RTT) or static proximity.
        attribute :backuplbmethod
        validates :backuplbmethod, inclusion: {:in=>[:ROUNDROBIN, :LEASTCONNECTION, :LEASTRESPONSETIME, :SOURCEIPHASH, :LEASTBANDWIDTH, :LEASTPACKETS, :STATICPROXIMITY, :RTT, :CUSTOMLOAD], :message=>"%{value} needs to be :ROUNDROBIN, :LEASTCONNECTION, :LEASTRESPONSETIME, :SOURCEIPHASH, :LEASTBANDWIDTH, :LEASTPACKETS, :STATICPROXIMITY, :RTT, :CUSTOMLOAD"}, allow_nil: true

        # @return [Object, nil] IPv4 network mask for use in the SOURCEIPHASH load balancing method.,Minimum length = 1
        attribute :netmask

        # @return [Object, nil] Number of bits to consider, in an IPv6 source IP address, for creating the hash that is required by the C(SOURCEIPHASH) load balancing method.,Default value: C(128),Minimum value = C(1),Maximum value = C(128)
        attribute :v6netmasklen

        # @return [Object, nil] Site selection tolerance, in milliseconds, for implementing the RTT load balancing method. If a site's RTT deviates from the lowest RTT by more than the specified tolerance, the site is not considered when the NetScaler appliance makes a GSLB decision. The appliance implements the round robin method of global server load balancing between sites whose RTT values are within the specified tolerance. If the tolerance is 0 (zero), the appliance always sends clients the IP address of the site with the lowest RTT.,Minimum value = C(0),Maximum value = C(100)
        attribute :tolerance

        # @return [:SOURCEIP, :NONE, nil] Use source IP address based persistence for the virtual server.,After the load balancing method selects a service for the first packet, the IP address received in response to the DNS query is used for subsequent requests from the same client.
        attribute :persistencetype
        validates :persistencetype, inclusion: {:in=>[:SOURCEIP, :NONE], :message=>"%{value} needs to be :SOURCEIP, :NONE"}, allow_nil: true

        # @return [Object, nil] The persistence ID for the GSLB virtual server. The ID is a positive integer that enables GSLB sites to identify the GSLB virtual server, and is required if source IP address based or spill over based persistence is enabled on the virtual server.,Minimum value = C(0),Maximum value = C(65535)
        attribute :persistenceid

        # @return [Object, nil] The optional IPv4 network mask applied to IPv4 addresses to establish source IP address based persistence.,Minimum length = 1
        attribute :persistmask

        # @return [Object, nil] Number of bits to consider in an IPv6 source IP address when creating source IP address based persistence sessions.,Default value: C(128),Minimum value = C(1),Maximum value = C(128)
        attribute :v6persistmasklen

        # @return [Object, nil] Idle time, in minutes, after which a persistence entry is cleared.,Default value: C(2),Minimum value = C(2),Maximum value = C(1440)
        attribute :timeout

        # @return [:enabled, :disabled, nil] Include multiple IP addresses in the DNS responses sent to clients.
        attribute :mir
        validates :mir, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Continue to direct traffic to the backup chain even after the primary GSLB virtual server returns to the UP state. Used when spillover is configured for the virtual server.
        attribute :disableprimaryondown
        validates :disableprimaryondown, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:SERVICECOUNT, :SERVICEWEIGHT, :DISABLED, nil] Specify if the appliance should consider the service count, service weights, or ignore both when using weight-based load balancing methods. The state of the number of services bound to the virtual server help the appliance to select the service.
        attribute :dynamicweight
        validates :dynamicweight, inclusion: {:in=>[:SERVICECOUNT, :SERVICEWEIGHT, :DISABLED], :message=>"%{value} needs to be :SERVICECOUNT, :SERVICEWEIGHT, :DISABLED"}, allow_nil: true

        # @return [:NONE, :STATE_ONLY, nil] If the primary state of all bound GSLB services is DOWN, consider the effective states of all the GSLB services, obtained through the Metrics Exchange Protocol (MEP), when determining the state of the GSLB virtual server. To consider the effective state, set the parameter to STATE_ONLY. To disregard the effective state, set the parameter to NONE.,The effective state of a GSLB service is the ability of the corresponding virtual server to serve traffic. The effective state of the load balancing virtual server, which is transferred to the GSLB service, is UP even if only one virtual server in the backup chain of virtual servers is in the UP state.
        attribute :considereffectivestate
        validates :considereffectivestate, inclusion: {:in=>[:NONE, :STATE_ONLY], :message=>"%{value} needs to be :NONE, :STATE_ONLY"}, allow_nil: true

        # @return [Object, nil] Any comments that you might want to associate with the GSLB virtual server.
        attribute :comment

        # @return [:CONNECTION, :DYNAMICCONNECTION, :BANDWIDTH, :HEALTH, :NONE, nil] Type of threshold that, when exceeded, triggers spillover. Available settings function as follows:,* C(CONNECTION) - Spillover occurs when the number of client connections exceeds the threshold.,* C(DYNAMICCONNECTION) - Spillover occurs when the number of client connections at the GSLB virtual server exceeds the sum of the maximum client (Max Clients) settings for bound GSLB services. Do not specify a spillover threshold for this setting, because the threshold is implied by the Max Clients settings of the bound GSLB services.,* C(BANDWIDTH) - Spillover occurs when the bandwidth consumed by the GSLB virtual server's incoming and outgoing traffic exceeds the threshold.,* C(HEALTH) - Spillover occurs when the percentage of weights of the GSLB services that are UP drops below the threshold. For example, if services gslbSvc1, gslbSvc2, and gslbSvc3 are bound to a virtual server, with weights 1, 2, and 3, and the spillover threshold is 50%, spillover occurs if gslbSvc1 and gslbSvc3 or gslbSvc2 and gslbSvc3 transition to DOWN.,* C(NONE) - Spillover does not occur.
        attribute :somethod
        validates :somethod, inclusion: {:in=>[:CONNECTION, :DYNAMICCONNECTION, :BANDWIDTH, :HEALTH, :NONE], :message=>"%{value} needs to be :CONNECTION, :DYNAMICCONNECTION, :BANDWIDTH, :HEALTH, :NONE"}, allow_nil: true

        # @return [:enabled, :disabled, nil] If spillover occurs, maintain source IP address based persistence for both primary and backup GSLB virtual servers.
        attribute :sopersistence
        validates :sopersistence, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Timeout for spillover persistence, in minutes.,Default value: C(2),Minimum value = C(2),Maximum value = C(1440)
        attribute :sopersistencetimeout

        # @return [Object, nil] Threshold at which spillover occurs. Specify an integer for the CONNECTION spillover method, a bandwidth value in kilobits per second for the BANDWIDTH method (do not enter the units), or a percentage for the HEALTH method (do not enter the percentage symbol).,Minimum value = C(1),Maximum value = C(4294967287)
        attribute :sothreshold

        # @return [:DROP, :ACCEPT, :REDIRECT, nil] Action to be performed if spillover is to take effect, but no backup chain to spillover is usable or exists.
        attribute :sobackupaction
        validates :sobackupaction, inclusion: {:in=>[:DROP, :ACCEPT, :REDIRECT], :message=>"%{value} needs to be :DROP, :ACCEPT, :REDIRECT"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Enable logging appflow flow information.
        attribute :appflowlog
        validates :appflowlog, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] List of bindings for domains for this glsb vserver.
        attribute :domain_bindings

        # @return [Object, nil] List of bindings for gslb services bound to this gslb virtual server.
        attribute :service_bindings

        # @return [Symbol, nil] When set to C(yes) the GSLB Vserver state will be set to C(disabled).,When set to C(no) the GSLB Vserver state will be set to C(enabled).,Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.
        attribute :disabled
        validates :disabled, type: Symbol
      end
    end
  end
end
