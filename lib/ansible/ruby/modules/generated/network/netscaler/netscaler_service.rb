# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage service configuration in Netscaler.
      # This module allows the creation, deletion and modification of Netscaler services.
      # This module is intended to run either on the ansible  control node or a bastion (jumpserver) with access to the actual netscaler instance.
      # This module supports check mode.
      class Netscaler_service < Base
        # @return [String, nil] Name for the service. Must begin with an ASCII alphabetic or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Cannot be changed after the service has been created.,Minimum length = 1
        attribute :name
        validates :name, type: String

        # @return [Object, nil] IP to assign to the service.,Minimum length = 1
        attribute :ip

        # @return [Object, nil] Name of the server that hosts the service.,Minimum length = 1
        attribute :servername

        # @return [:HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :DTLS, :NNTP, :RPCSVR, :DNS, :ADNS, :SNMP, :RTSP, :DHCPRA, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :DNS_TCP, :ADNS_TCP, :MYSQL, :MSSQL, :ORACLE, :RADIUS, :RADIUSListener, :RDP, :DIAMETER, :SSL_DIAMETER, :TFTP, :SMPP, :PPTP, :GRE, :SYSLOGTCP, :SYSLOGUDP, :FIX, :SSL_FIX, nil] Protocol in which data is exchanged with the service.
        attribute :servicetype
        validates :servicetype, expression_inclusion: {:in=>[:HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :DTLS, :NNTP, :RPCSVR, :DNS, :ADNS, :SNMP, :RTSP, :DHCPRA, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :DNS_TCP, :ADNS_TCP, :MYSQL, :MSSQL, :ORACLE, :RADIUS, :RADIUSListener, :RDP, :DIAMETER, :SSL_DIAMETER, :TFTP, :SMPP, :PPTP, :GRE, :SYSLOGTCP, :SYSLOGUDP, :FIX, :SSL_FIX], :message=>"%{value} needs to be :HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :DTLS, :NNTP, :RPCSVR, :DNS, :ADNS, :SNMP, :RTSP, :DHCPRA, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :DNS_TCP, :ADNS_TCP, :MYSQL, :MSSQL, :ORACLE, :RADIUS, :RADIUSListener, :RDP, :DIAMETER, :SSL_DIAMETER, :TFTP, :SMPP, :PPTP, :GRE, :SYSLOGTCP, :SYSLOGUDP, :FIX, :SSL_FIX"}, allow_nil: true

        # @return [Integer, nil] Port number of the service.,Range 1 - 65535,* in CLI is represented as 65535 in NITRO API
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] Port to which clear text data must be sent after the appliance decrypts incoming SSL traffic. Applicable to transparent SSL services.,Minimum value = 1
        attribute :cleartextport

        # @return [:TRANSPARENT, :REVERSE, :FORWARD, nil] Cache type supported by the cache server.
        attribute :cachetype
        validates :cachetype, expression_inclusion: {:in=>[:TRANSPARENT, :REVERSE, :FORWARD], :message=>"%{value} needs to be :TRANSPARENT, :REVERSE, :FORWARD"}, allow_nil: true

        # @return [Object, nil] Maximum number of simultaneous open connections to the service.,Minimum value = 0,Maximum value = 4294967294
        attribute :maxclient

        # @return [Boolean, nil] Monitor the health of this service
        attribute :healthmonitor
        validates :healthmonitor, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Maximum number of requests that can be sent on a persistent connection to the service.,Note: Connection requests beyond this value are rejected.,Minimum value = 0,Maximum value = 65535
        attribute :maxreq

        # @return [Boolean, nil] Use the transparent cache redirection virtual server to forward requests to the cache server.,Note: Do not specify this parameter if you set the Cache Type parameter.
        attribute :cacheable
        validates :cacheable, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Before forwarding a request to the service, insert an HTTP header with the client's IPv4 or IPv6 address as its value. Used if the server needs the client's IP address for security, accounting, or other purposes, and setting the Use Source IP parameter is not a viable option.
        attribute :cip
        validates :cip, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Name for the HTTP header whose value must be set to the IP address of the client. Used with the Client IP parameter. If you set the Client IP parameter, and you do not specify a name for the header, the appliance uses the header name specified for the global Client IP Header parameter (the cipHeader parameter in the set ns param CLI command or the Client IP Header parameter in the Configure HTTP Parameters dialog box at System > Settings > Change HTTP parameters). If the global Client IP Header parameter is not specified, the appliance inserts a header with the name "client-ip.".,Minimum length = 1
        attribute :cipheader

        # @return [Object, nil] Use the client's IP address as the source IP address when initiating a connection to the server. When creating a service, if you do not set this parameter, the service inherits the global Use Source IP setting (available in the enable ns mode and disable ns mode CLI commands, or in the System > Settings > Configure modes > Configure Modes dialog box). However, you can override this setting after you create the service.
        attribute :usip

        # @return [Object, nil] Path monitoring for clustering.
        attribute :pathmonitor

        # @return [Object, nil] Individual Path monitoring decisions.
        attribute :pathmonitorindv

        # @return [Object, nil] Use the proxy port as the source port when initiating connections with the server. With the NO setting, the client-side connection port is used as the source port for the server-side connection.,Note: This parameter is available only when the Use Source IP (USIP) parameter is set to YES.
        attribute :useproxyport

        # @return [Object, nil] Enable surge protection for the service.
        attribute :sp

        # @return [Boolean, nil] Enable RTSP session ID mapping for the service.
        attribute :rtspsessionidremap
        validates :rtspsessionidremap, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Time, in seconds, after which to terminate an idle client connection.,Minimum value = 0,Maximum value = 31536000
        attribute :clttimeout

        # @return [Object, nil] Time, in seconds, after which to terminate an idle server connection.,Minimum value = 0,Maximum value = 31536000
        attribute :svrtimeout

        # @return [Object, nil] Unique identifier for the service. Used when the persistency type for the virtual server is set to Custom Server ID.
        attribute :customserverid

        # @return [Object, nil] The identifier for the service. This is used when the persistency type is set to Custom Server ID.
        attribute :serverid

        # @return [Object, nil] Enable client keep-alive for the service.
        attribute :cka

        # @return [Object, nil] Enable TCP buffering for the service.
        attribute :tcpb

        # @return [Object, nil] Enable compression for the service.
        attribute :cmp

        # @return [Object, nil] Maximum bandwidth, in Kbps, allocated to the service.,Minimum value = 0,Maximum value = 4294967287
        attribute :maxbandwidth

        # @return [Boolean, nil] Use Layer 2 mode to bridge the packets sent to this service if it is marked as DOWN. If the service is DOWN, and this parameter is disabled, the packets are dropped.
        attribute :accessdown
        validates :accessdown, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Minimum sum of weights of the monitors that are bound to this service. Used to determine whether to mark a service as UP or DOWN.,Minimum value = 0,Maximum value = 65535
        attribute :monthreshold

        # @return [:enabled, :disabled, nil] Flush all active transactions associated with a service whose state transitions from UP to DOWN. Do not enable this option for applications that must complete their transactions.
        attribute :downstateflush
        validates :downstateflush, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Name of the TCP profile that contains TCP configuration settings for the service.,Minimum length = 1,Maximum length = 127
        attribute :tcpprofilename

        # @return [Object, nil] Name of the HTTP profile that contains HTTP configuration settings for the service.,Minimum length = 1,Maximum length = 127
        attribute :httpprofilename

        # @return [Object, nil] A numerical identifier that can be used by hash based load balancing methods. Must be unique for each service.,Minimum value = 1
        attribute :hashid

        # @return [Object, nil] Any information about the service.
        attribute :comment

        # @return [:enabled, :disabled, nil] Enable logging of AppFlow information.
        attribute :appflowlog
        validates :appflowlog, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Network profile to use for the service.,Minimum length = 1,Maximum length = 127
        attribute :netprofile

        # @return [Object, nil] Integer value that uniquely identifies the traffic domain in which you want to configure the entity. If you do not specify an ID, the entity becomes part of the default traffic domain, which has an ID of 0.,Minimum value = 0,Maximum value = 4094
        attribute :td

        # @return [:enabled, :disabled, nil] By turning on this option packets destined to a service in a cluster will not under go any steering. Turn this option for single packet request response mode or when the upstream device is performing a proper RSS for connection based distribution.
        attribute :processlocal
        validates :processlocal, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Name of the DNS profile to be associated with the service. DNS profile properties will applied to the transactions processed by a service. This parameter is valid only for ADNS and ADNS-TCP services.,Minimum length = 1,Maximum length = 127
        attribute :dnsprofilename

        # @return [String, nil] The new IP address of the service.
        attribute :ipaddress
        validates :ipaddress, type: String

        # @return [Boolean, nil] Shut down gracefully, not accepting any new connections, and disabling the service when all of its connections are closed.
        attribute :graceful
        validates :graceful, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] A list of load balancing monitors to bind to this service.,Each monitor entry is a dictionary which may contain the following options.,Note that if not using the built in monitors they must first be setup.
        attribute :monitor_bindings
        validates :monitor_bindings, type: TypeGeneric.new(String)

        # @return [Symbol, nil] When set to C(yes) the service state will be set to DISABLED.,When set to C(no) the service state will be set to ENABLED.,Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.
        attribute :disabled
        validates :disabled, type: Symbol
      end
    end
  end
end
