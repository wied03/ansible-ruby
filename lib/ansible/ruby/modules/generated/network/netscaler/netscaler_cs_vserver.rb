# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage content switching vserver
      # This module is intended to run either on the ansible  control node or a bastion (jumpserver) with access to the actual netscaler instance
      class Netscaler_cs_vserver < Base
        # @return [String, nil] Name for the content switching virtual server. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space, colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters.,Cannot be changed after the CS virtual server is created.,Minimum length = 1
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Integer value that uniquely identifies the traffic domain in which you want to configure the entity. If you do not specify an ID, the entity becomes part of the default traffic domain, which has an ID of 0.,Minimum value = 0,Maximum value = 4094
        attribute :td

        # @return [:HTTP, :SSL, :TCP, :FTP, :RTSP, :SSL_TCP, :UDP, :DNS, :SIP_UDP, :SIP_TCP, :SIP_SSL, :ANY, :RADIUS, :RDP, :MYSQL, :MSSQL, :DIAMETER, :SSL_DIAMETER, :DNS_TCP, :ORACLE, :SMPP, nil] Protocol used by the virtual server.
        attribute :servicetype
        validates :servicetype, expression_inclusion: {:in=>[:HTTP, :SSL, :TCP, :FTP, :RTSP, :SSL_TCP, :UDP, :DNS, :SIP_UDP, :SIP_TCP, :SIP_SSL, :ANY, :RADIUS, :RDP, :MYSQL, :MSSQL, :DIAMETER, :SSL_DIAMETER, :DNS_TCP, :ORACLE, :SMPP], :message=>"%{value} needs to be :HTTP, :SSL, :TCP, :FTP, :RTSP, :SSL_TCP, :UDP, :DNS, :SIP_UDP, :SIP_TCP, :SIP_SSL, :ANY, :RADIUS, :RDP, :MYSQL, :MSSQL, :DIAMETER, :SSL_DIAMETER, :DNS_TCP, :ORACLE, :SMPP"}, allow_nil: true

        # @return [String, nil] IP address of the content switching virtual server.,Minimum length = 1
        attribute :ipv46
        validates :ipv46, type: String

        # @return [:GSLB, nil] Virtual server target type.
        attribute :targettype
        validates :targettype, expression_inclusion: {:in=>[:GSLB], :message=>"%{value} needs to be :GSLB"}, allow_nil: true

        # @return [Object, nil] IP address pattern, in dotted decimal notation, for identifying packets to be accepted by the virtual server. The IP Mask parameter specifies which part of the destination IP address is matched against the pattern. Mutually exclusive with the IP Address parameter.,For example, if the IP pattern assigned to the virtual server is C(198.51.100.0) and the IP mask is C(255.255.240.0) (a forward mask), the first 20 bits in the destination IP addresses are matched with the first 20 bits in the pattern. The virtual server accepts requests with IP addresses that range from 198.51.96.1 to 198.51.111.254. You can also use a pattern such as C(0.0.2.2) and a mask such as C(0.0.255.255) (a reverse mask).,If a destination IP address matches more than one IP pattern, the pattern with the longest match is selected, and the associated virtual server processes the request. For example, if the virtual servers, C(vs1) and C(vs2), have the same IP pattern, C(0.0.100.128), but different IP masks of C(0.0.255.255) and C(0.0.224.255), a destination IP address of 198.51.100.128 has the longest match with the IP pattern of C(vs1). If a destination IP address matches two or more virtual servers to the same extent, the request is processed by the virtual server whose port number matches the port number in the request.
        attribute :ippattern

        # @return [Object, nil] IP mask, in dotted decimal notation, for the IP Pattern parameter. Can have leading or trailing non-zero octets (for example, C(255.255.240.0) or C(0.0.255.255)). Accordingly, the mask specifies whether the first n bits or the last n bits of the destination IP address in a client request are to be matched with the corresponding bits in the IP pattern. The former is called a forward mask. The latter is called a reverse mask.
        attribute :ipmask

        # @return [Object, nil] Number of consecutive IP addresses, starting with the address specified by the IP Address parameter, to include in a range of addresses assigned to this virtual server.,Minimum value = C(1),Maximum value = C(254)
        attribute :range

        # @return [Integer, nil] Port number for content switching virtual server.,Minimum value = 1,Range C(1) - C(65535),* in CLI is represented as 65535 in NITRO API
        attribute :port
        validates :port, type: Integer

        # @return [:enabled, :disabled, nil] Enable state updates for a specific content switching virtual server. By default, the Content Switching virtual server is always UP, regardless of the state of the Load Balancing virtual servers bound to it. This parameter interacts with the global setting as follows:,Global Level | Vserver Level | Result,enabled enabled enabled,enabled disabled enabled,disabled enabled enabled,disabled disabled disabled,If you want to enable state updates for only some content switching virtual servers, be sure to disable the state update parameter.
        attribute :stateupdate
        validates :stateupdate, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Symbol, nil] Use this option to specify whether a virtual server, used for load balancing or content switching, routes requests to the cache redirection virtual server before sending it to the configured servers.
        attribute :cacheable
        validates :cacheable, type: Symbol

        # @return [Object, nil] URL to which traffic is redirected if the virtual server becomes unavailable. The service type of the virtual server should be either C(HTTP) or C(SSL).,Caution: Make sure that the domain in the URL does not match the domain specified for a content switching policy. If it does, requests are continuously redirected to the unavailable virtual server.,Minimum length = 1
        attribute :redirecturl

        # @return [Object, nil] Idle time, in seconds, after which the client connection is terminated. The default values are:,Minimum value = C(0),Maximum value = C(31536000)
        attribute :clttimeout

        # @return [:RULE, :URL, nil] Type of precedence to use for both RULE-based and URL-based policies on the content switching virtual server. With the default C(RULE) setting, incoming requests are evaluated against the rule-based content switching policies. If none of the rules match, the URL in the request is evaluated against the URL-based content switching policies.
        attribute :precedence
        validates :precedence, expression_inclusion: {:in=>[:RULE, :URL], :message=>"%{value} needs to be :RULE, :URL"}, allow_nil: true

        # @return [Symbol, nil] Consider case in URLs (for policies that use URLs instead of RULES). For example, with the C(on) setting, the URLs /a/1.html and /A/1.HTML are treated differently and can have different targets (set by content switching policies). With the C(off) setting, /a/1.html and /A/1.HTML are switched to the same target.
        attribute :casesensitive
        validates :casesensitive, type: Symbol

        # @return [:CONNECTION, :DYNAMICCONNECTION, :BANDWIDTH, :HEALTH, :NONE, nil] Type of spillover used to divert traffic to the backup virtual server when the primary virtual server reaches the spillover threshold. Connection spillover is based on the number of connections. Bandwidth spillover is based on the total Kbps of incoming and outgoing traffic.
        attribute :somethod
        validates :somethod, expression_inclusion: {:in=>[:CONNECTION, :DYNAMICCONNECTION, :BANDWIDTH, :HEALTH, :NONE], :message=>"%{value} needs to be :CONNECTION, :DYNAMICCONNECTION, :BANDWIDTH, :HEALTH, :NONE"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Maintain source-IP based persistence on primary and backup virtual servers.
        attribute :sopersistence
        validates :sopersistence, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Time-out value, in minutes, for spillover persistence.,Minimum value = C(2),Maximum value = C(1440)
        attribute :sopersistencetimeout

        # @return [Object, nil] Depending on the spillover method, the maximum number of connections or the maximum total bandwidth (Kbps) that a virtual server can handle before spillover occurs.,Minimum value = C(1),Maximum value = C(4294967287)
        attribute :sothreshold

        # @return [:DROP, :ACCEPT, :REDIRECT, nil] Action to be performed if spillover is to take effect, but no backup chain to spillover is usable or exists.
        attribute :sobackupaction
        validates :sobackupaction, expression_inclusion: {:in=>[:DROP, :ACCEPT, :REDIRECT], :message=>"%{value} needs to be :DROP, :ACCEPT, :REDIRECT"}, allow_nil: true

        # @return [:enabled, :disabled, nil] State of port rewrite while performing HTTP redirect.
        attribute :redirectportrewrite
        validates :redirectportrewrite, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Flush all active transactions associated with a virtual server whose state transitions from UP to DOWN. Do not enable this option for applications that must complete their transactions.
        attribute :downstateflush
        validates :downstateflush, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Name of the backup virtual server that you are configuring. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters. Can be changed after the backup virtual server is created. You can assign a different backup virtual server or rename the existing virtual server.,Minimum length = 1
        attribute :backupvserver

        # @return [:enabled, :disabled, nil] Continue forwarding the traffic to backup virtual server even after the primary server comes UP from the DOWN state.
        attribute :disableprimaryondown
        validates :disableprimaryondown, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:OFF, :VIPADDR, :V6TOV4MAPPING, nil] Insert the virtual server's VIP address and port number in the request header. Available values function as follows:,C(VIPADDR) - Header contains the vserver's IP address and port number without any translation.,C(OFF) - The virtual IP and port header insertion option is disabled.,C(V6TOV4MAPPING) - Header contains the mapped IPv4 address corresponding to the IPv6 address of the vserver and the port number. An IPv6 address can be mapped to a user-specified IPv4 address using the set ns ip6 command.
        attribute :insertvserveripport
        validates :insertvserveripport, expression_inclusion: {:in=>[:OFF, :VIPADDR, :V6TOV4MAPPING], :message=>"%{value} needs to be :OFF, :VIPADDR, :V6TOV4MAPPING"}, allow_nil: true

        # @return [Object, nil] Name of virtual server IP and port header, for use with the VServer IP Port Insertion parameter.,Minimum length = 1
        attribute :vipheader

        # @return [Symbol, nil] Enable network address translation (NAT) for real-time streaming protocol (RTSP) connections.
        attribute :rtspnat
        validates :rtspnat, type: Symbol

        # @return [Object, nil] FQDN of the authentication virtual server. The service type of the virtual server should be either C(HTTP) or C(SSL).,Minimum length = 3,Maximum length = 252
        attribute :authenticationhost

        # @return [Symbol, nil] Authenticate users who request a connection to the content switching virtual server.
        attribute :authentication
        validates :authentication, type: Symbol

        # @return [Object, nil] String specifying the listen policy for the content switching virtual server. Can be either the name of an existing expression or an in-line expression.
        attribute :listenpolicy

        # @return [Symbol, nil] Enable HTTP 401-response based authentication.
        attribute :authn401
        validates :authn401, type: Symbol

        # @return [Object, nil] Name of authentication virtual server that authenticates the incoming user requests to this content switching virtual server. .,Minimum length = 1,Maximum length = 252
        attribute :authnvsname

        # @return [:enabled, :disabled, nil] Process traffic with the push virtual server that is bound to this content switching virtual server (specified by the Push VServer parameter). The service type of the push virtual server should be either C(HTTP) or C(SSL).
        attribute :push
        validates :push, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Name of the load balancing virtual server, of type C(PUSH) or C(SSL_PUSH), to which the server pushes updates received on the client-facing load balancing virtual server.,Minimum length = 1
        attribute :pushvserver

        # @return [Object, nil] Expression for extracting the label from the response received from server. This string can be either an existing rule name or an inline expression. The service type of the virtual server should be either C(HTTP) or C(SSL).
        attribute :pushlabel

        # @return [Symbol, nil] Allow multiple Web 2.0 connections from the same client to connect to the virtual server and expect updates.
        attribute :pushmulticlients
        validates :pushmulticlients, type: Symbol

        # @return [Object, nil] Name of the TCP profile containing TCP configuration settings for the virtual server.,Minimum length = 1,Maximum length = 127
        attribute :tcpprofilename

        # @return [Object, nil] Name of the HTTP profile containing HTTP configuration settings for the virtual server. The service type of the virtual server should be either C(HTTP) or C(SSL).,Minimum length = 1,Maximum length = 127
        attribute :httpprofilename

        # @return [Object, nil] Name of the DB profile.,Minimum length = 1,Maximum length = 127
        attribute :dbprofilename

        # @return [:"10G", :"11G", nil] Oracle server version.
        attribute :oracleserverversion
        validates :oracleserverversion, expression_inclusion: {:in=>[:"10G", :"11G"], :message=>"%{value} needs to be :\"10G\", :\"11G\""}, allow_nil: true

        # @return [Object, nil] Information about this virtual server.
        attribute :comment

        # @return [70, 2000, :"2000SP1", 2005, 2008, :"2008R2", 2012, 2014, nil] The version of the MSSQL server.
        attribute :mssqlserverversion
        validates :mssqlserverversion, expression_inclusion: {:in=>[70, 2000, :"2000SP1", 2005, 2008, :"2008R2", 2012, 2014], :message=>"%{value} needs to be 70, 2000, :\"2000SP1\", 2005, 2008, :\"2008R2\", 2012, 2014"}, allow_nil: true

        # @return [Object, nil] Use L2 Parameters to identify a connection.
        attribute :l2conn

        # @return [Object, nil] The protocol version returned by the mysql vserver.
        attribute :mysqlprotocolversion

        # @return [Object, nil] The server version string returned by the mysql vserver.,Minimum length = 1,Maximum length = 31
        attribute :mysqlserverversion

        # @return [Object, nil] The character set returned by the mysql vserver.
        attribute :mysqlcharacterset

        # @return [Object, nil] The server capabilities returned by the mysql vserver.
        attribute :mysqlservercapabilities

        # @return [:enabled, :disabled, nil] Enable logging appflow flow information.
        attribute :appflowlog
        validates :appflowlog, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] The name of the network profile.,Minimum length = 1,Maximum length = 127
        attribute :netprofile

        # @return [:PASSIVE, :ACTIVE, nil] Can be active or passive.
        attribute :icmpvsrresponse
        validates :icmpvsrresponse, expression_inclusion: {:in=>[:PASSIVE, :ACTIVE], :message=>"%{value} needs to be :PASSIVE, :ACTIVE"}, allow_nil: true

        # @return [:PASSIVE, :ACTIVE, nil] A host route is injected according to the setting on the virtual servers,* If set to C(PASSIVE) on all the virtual servers that share the IP address, the appliance always injects the hostroute.,* If set to C(ACTIVE) on all the virtual servers that share the IP address, the appliance injects even if one virtual server is UP.,* If set to C(ACTIVE) on some virtual servers and C(PASSIVE) on the others, the appliance, injects even if one virtual server set to C(ACTIVE) is UP.
        attribute :rhistate
        validates :rhistate, expression_inclusion: {:in=>[:PASSIVE, :ACTIVE], :message=>"%{value} needs to be :PASSIVE, :ACTIVE"}, allow_nil: true

        # @return [Object, nil] Name of the authentication profile to be used when authentication is turned on.
        attribute :authnprofile

        # @return [Object, nil] Name of the DNS profile to be associated with the VServer. DNS profile properties will applied to the transactions processed by a VServer. This parameter is valid only for DNS and DNS-TCP VServers.,Minimum length = 1,Maximum length = 127
        attribute :dnsprofilename

        # @return [Object, nil] Domain name for which to change the time to live (TTL) and/or backup service IP address.,Minimum length = 1
        attribute :domainname

        # @return [Object, nil] .,Minimum value = C(1)
        attribute :ttl

        # @return [Object, nil] .,Minimum length = 1
        attribute :backupip

        # @return [Object, nil] .,Minimum length = 1
        attribute :cookiedomain

        # @return [Object, nil] .,Minimum value = C(0),Maximum value = C(1440)
        attribute :cookietimeout

        # @return [Object, nil] .,Minimum value = C(1)
        attribute :sitedomainttl

        # @return [Object, nil] The default Load Balancing virtual server.
        attribute :lbvserver

        # @return [Object, nil] The name of the ssl certificate that is bound to this service.,The ssl certificate must already exist.,Creating the certificate can be done with the M(netscaler_ssl_certkey) module.,This option is only applicable only when C(servicetype) is C(SSL).
        attribute :ssl_certkey

        # @return [:yes, :no, nil] When set to C(yes) the cs vserver will be disabled.,When set to C(no) the cs vserver will be enabled.,Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.
        attribute :disabled
        validates :disabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
