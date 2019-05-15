# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage service group configuration in Netscaler.
      # This module is intended to run either on the ansible  control node or a bastion (jumpserver) with access to the actual netscaler instance.
      class Netscaler_servicegroup < Base
        # @return [String, nil] Name of the service group. Must begin with an ASCII alphabetic or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Can be changed after the name is created.,Minimum length = 1
        attribute :servicegroupname
        validates :servicegroupname, type: String

        # @return [:HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :DTLS, :NNTP, :RPCSVR, :DNS, :ADNS, :SNMP, :RTSP, :DHCPRA, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :DNS_TCP, :ADNS_TCP, :MYSQL, :MSSQL, :ORACLE, :RADIUS, :RADIUSListener, :RDP, :DIAMETER, :SSL_DIAMETER, :TFTP, :SMPP, :PPTP, :GRE, :SYSLOGTCP, :SYSLOGUDP, :FIX, :SSL_FIX, nil] Protocol used to exchange data with the service.
        attribute :servicetype
        validates :servicetype, inclusion: {:in=>[:HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :DTLS, :NNTP, :RPCSVR, :DNS, :ADNS, :SNMP, :RTSP, :DHCPRA, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :DNS_TCP, :ADNS_TCP, :MYSQL, :MSSQL, :ORACLE, :RADIUS, :RADIUSListener, :RDP, :DIAMETER, :SSL_DIAMETER, :TFTP, :SMPP, :PPTP, :GRE, :SYSLOGTCP, :SYSLOGUDP, :FIX, :SSL_FIX], :message=>"%{value} needs to be :HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :DTLS, :NNTP, :RPCSVR, :DNS, :ADNS, :SNMP, :RTSP, :DHCPRA, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :DNS_TCP, :ADNS_TCP, :MYSQL, :MSSQL, :ORACLE, :RADIUS, :RADIUSListener, :RDP, :DIAMETER, :SSL_DIAMETER, :TFTP, :SMPP, :PPTP, :GRE, :SYSLOGTCP, :SYSLOGUDP, :FIX, :SSL_FIX"}, allow_nil: true

        # @return [:TRANSPARENT, :REVERSE, :FORWARD, nil] Cache type supported by the cache server.
        attribute :cachetype
        validates :cachetype, inclusion: {:in=>[:TRANSPARENT, :REVERSE, :FORWARD], :message=>"%{value} needs to be :TRANSPARENT, :REVERSE, :FORWARD"}, allow_nil: true

        # @return [Object, nil] Maximum number of simultaneous open connections for the service group.,Minimum value = C(0),Maximum value = C(4294967294)
        attribute :maxclient

        # @return [Object, nil] Maximum number of requests that can be sent on a persistent connection to the service group.,Note: Connection requests beyond this value are rejected.,Minimum value = C(0),Maximum value = C(65535)
        attribute :maxreq

        # @return [Object, nil] Use the transparent cache redirection virtual server to forward the request to the cache server.,Note: Do not set this parameter if you set the Cache Type.
        attribute :cacheable

        # @return [:enabled, :disabled, nil] Insert the Client IP header in requests forwarded to the service.
        attribute :cip
        validates :cip, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Name of the HTTP header whose value must be set to the IP address of the client. Used with the Client IP parameter. If client IP insertion is enabled, and the client IP header is not specified, the value of Client IP Header parameter or the value set by the set ns config command is used as client's IP header name.,Minimum length = 1
        attribute :cipheader

        # @return [Object, nil] Use client's IP address as the source IP address when initiating connection to the server. With the NO setting, which is the default, a mapped IP (MIP) address or subnet IP (SNIP) address is used as the source IP address to initiate server side connections.
        attribute :usip

        # @return [Object, nil] Path monitoring for clustering.
        attribute :pathmonitor

        # @return [Object, nil] Individual Path monitoring decisions.
        attribute :pathmonitorindv

        # @return [Object, nil] Use the proxy port as the source port when initiating connections with the server. With the NO setting, the client-side connection port is used as the source port for the server-side connection.,Note: This parameter is available only when the Use Source IP C(usip) parameter is set to C(yes).
        attribute :useproxyport

        # @return [Object, nil] Monitor the health of this service. Available settings function as follows:,C(yes) - Send probes to check the health of the service.,C(no) - Do not send probes to check the health of the service. With the NO option, the appliance shows the service as UP at all times.
        attribute :healthmonitor

        # @return [Object, nil] Enable surge protection for the service group.
        attribute :sp

        # @return [Object, nil] Enable RTSP session ID mapping for the service group.
        attribute :rtspsessionidremap

        # @return [Object, nil] Time, in seconds, after which to terminate an idle client connection.,Minimum value = C(0),Maximum value = C(31536000)
        attribute :clttimeout

        # @return [Object, nil] Time, in seconds, after which to terminate an idle server connection.,Minimum value = C(0),Maximum value = C(31536000)
        attribute :svrtimeout

        # @return [Object, nil] Enable client keep-alive for the service group.
        attribute :cka

        # @return [Object, nil] Enable TCP buffering for the service group.
        attribute :tcpb

        # @return [Object, nil] Enable compression for the specified service.
        attribute :cmp

        # @return [Object, nil] Maximum bandwidth, in Kbps, allocated for all the services in the service group.,Minimum value = C(0),Maximum value = C(4294967287)
        attribute :maxbandwidth

        # @return [Object, nil] Minimum sum of weights of the monitors that are bound to this service. Used to determine whether to mark a service as UP or DOWN.,Minimum value = C(0),Maximum value = C(65535)
        attribute :monthreshold

        # @return [:enabled, :disabled, nil] Flush all active transactions associated with all the services in the service group whose state transitions from UP to DOWN. Do not enable this option for applications that must complete their transactions.
        attribute :downstateflush
        validates :downstateflush, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Name of the TCP profile that contains TCP configuration settings for the service group.,Minimum length = 1,Maximum length = 127
        attribute :tcpprofilename

        # @return [Object, nil] Name of the HTTP profile that contains HTTP configuration settings for the service group.,Minimum length = 1,Maximum length = 127
        attribute :httpprofilename

        # @return [Object, nil] Any information about the service group.
        attribute :comment

        # @return [:enabled, :disabled, nil] Enable logging of AppFlow information for the specified service group.
        attribute :appflowlog
        validates :appflowlog, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Network profile for the service group.,Minimum length = 1,Maximum length = 127
        attribute :netprofile

        # @return [:DISABLED, :DNS, :POLICY, nil] Auto scale option for a servicegroup.
        attribute :autoscale
        validates :autoscale, inclusion: {:in=>[:DISABLED, :DNS, :POLICY], :message=>"%{value} needs to be :DISABLED, :DNS, :POLICY"}, allow_nil: true

        # @return [Object, nil] member port.
        attribute :memberport

        # @return [Object, nil] Wait for all existing connections to the service to terminate before shutting down the service.
        attribute :graceful

        # @return [Array<Hash>, Hash, nil] A list of dictionaries describing each service member of the service group.
        attribute :servicemembers
        validates :servicemembers, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] A list of monitornames to bind to this service,Note that the monitors must have already been setup possibly using the M(netscaler_lb_monitor) module or some other method
        attribute :monitorbindings
        validates :monitorbindings, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] When set to C(yes) the service group state will be set to DISABLED.,When set to C(no) the service group state will be set to ENABLED.,Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.
        attribute :disabled
        validates :disabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
