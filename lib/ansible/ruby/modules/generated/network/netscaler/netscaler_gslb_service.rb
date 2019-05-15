# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage gslb service entities in Netscaler.
      class Netscaler_gslb_service < Base
        # @return [String, nil] Name for the GSLB service. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space, colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Can be changed after the GSLB service is created.,,Minimum length = 1
        attribute :servicename
        validates :servicename, type: String

        # @return [String, nil] Canonical name of the GSLB service. Used in CNAME-based GSLB.,Minimum length = 1
        attribute :cnameentry
        validates :cnameentry, type: String

        # @return [Object, nil] Name of the server hosting the GSLB service.,Minimum length = 1
        attribute :servername

        # @return [:HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :NNTP, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :RADIUS, :RDP, :RTSP, :MYSQL, :MSSQL, :ORACLE, nil] Type of service to create.
        attribute :servicetype
        validates :servicetype, inclusion: {:in=>[:HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :NNTP, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :RADIUS, :RDP, :RTSP, :MYSQL, :MSSQL, :ORACLE], :message=>"%{value} needs to be :HTTP, :FTP, :TCP, :UDP, :SSL, :SSL_BRIDGE, :SSL_TCP, :NNTP, :ANY, :SIP_UDP, :SIP_TCP, :SIP_SSL, :RADIUS, :RDP, :RTSP, :MYSQL, :MSSQL, :ORACLE"}, allow_nil: true

        # @return [Object, nil] Port on which the load balancing entity represented by this GSLB service listens.,Minimum value = 1,Range 1 - 65535,* in CLI is represented as 65535 in NITRO API
        attribute :port

        # @return [Object, nil] The public IP address that a NAT device translates to the GSLB service's private IP address. Optional.
        attribute :publicip

        # @return [Object, nil] The public port associated with the GSLB service's public IP address. The port is mapped to the service's private port number. Applicable to the local GSLB service. Optional.
        attribute :publicport

        # @return [Object, nil] The maximum number of open connections that the service can support at any given time. A GSLB service whose connection count reaches the maximum is not considered when a GSLB decision is made, until the connection count drops below the maximum.,Minimum value = C(0),Maximum value = C(4294967294)
        attribute :maxclient

        # @return [Object, nil] Monitor the health of the GSLB service.
        attribute :healthmonitor

        # @return [String, nil] Name of the GSLB site to which the service belongs.,Minimum length = 1
        attribute :sitename
        validates :sitename, type: String

        # @return [:enabled, :disabled, nil] In the request that is forwarded to the GSLB service, insert a header that stores the client's IP address. Client IP header insertion is used in connection-proxy based site persistence.
        attribute :cip
        validates :cip, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Name for the HTTP header that stores the client's IP address. Used with the Client IP option. If client IP header insertion is enabled on the service and a name is not specified for the header, the NetScaler appliance uses the name specified by the cipHeader parameter in the set ns param command or, in the GUI, the Client IP Header parameter in the Configure HTTP Parameters dialog box.,Minimum length = 1
        attribute :cipheader

        # @return [:ConnectionProxy, :HTTPRedirect, :NONE, nil] Use cookie-based site persistence. Applicable only to C(HTTP) and C(SSL) GSLB services.
        attribute :sitepersistence
        validates :sitepersistence, inclusion: {:in=>[:ConnectionProxy, :HTTPRedirect, :NONE], :message=>"%{value} needs to be :ConnectionProxy, :HTTPRedirect, :NONE"}, allow_nil: true

        # @return [Object, nil] The site's prefix string. When the service is bound to a GSLB virtual server, a GSLB site domain is generated internally for each bound service-domain pair by concatenating the site prefix of the service and the name of the domain. If the special string NONE is specified, the site-prefix string is unset. When implementing HTTP redirect site persistence, the NetScaler appliance redirects GSLB requests to GSLB services by using their site domains.
        attribute :siteprefix

        # @return [Object, nil] Idle time, in seconds, after which a client connection is terminated. Applicable if connection proxy based site persistence is used.,Minimum value = 0,Maximum value = 31536000
        attribute :clttimeout

        # @return [Object, nil] Integer specifying the maximum bandwidth allowed for the service. A GSLB service whose bandwidth reaches the maximum is not considered when a GSLB decision is made, until its bandwidth consumption drops below the maximum.
        attribute :maxbandwidth

        # @return [:enabled, :disabled, nil] Flush all active transactions associated with the GSLB service when its state transitions from UP to DOWN. Do not enable this option for services that must complete their transactions. Applicable if connection proxy based site persistence is used.
        attribute :downstateflush
        validates :downstateflush, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Maximum number of SSL VPN users that can be logged on concurrently to the VPN virtual server that is represented by this GSLB service. A GSLB service whose user count reaches the maximum is not considered when a GSLB decision is made, until the count drops below the maximum.,Minimum value = C(0),Maximum value = C(65535)
        attribute :maxaaausers

        # @return [Object, nil] Monitoring threshold value for the GSLB service. If the sum of the weights of the monitors that are bound to this GSLB service and are in the UP state is not equal to or greater than this threshold value, the service is marked as DOWN.,Minimum value = C(0),Maximum value = C(65535)
        attribute :monthreshold

        # @return [Object, nil] Unique hash identifier for the GSLB service, used by hash based load balancing methods.,Minimum value = C(1)
        attribute :hashid

        # @return [Object, nil] Any comments that you might want to associate with the GSLB service.
        attribute :comment

        # @return [:enabled, :disabled, nil] Enable logging appflow flow information.
        attribute :appflowlog
        validates :appflowlog, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] IP address for the GSLB service. Should represent a load balancing, content switching, or VPN virtual server on the NetScaler appliance, or the IP address of another load balancing device.
        attribute :ipaddress

        # @return [Object, nil] Bind monitors to this gslb service
        attribute :monitor_bindings
      end
    end
  end
end
