# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage gslb site entities in Netscaler.
      class Netscaler_gslb_site < Base
        # @return [String, nil] Name for the GSLB site. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Cannot be changed after the virtual server is created.,Minimum length = 1
        attribute :sitename
        validates :sitename, type: String

        # @return [:REMOTE, :LOCAL, nil] Type of site to create. If the type is not specified, the appliance automatically detects and sets the type on the basis of the IP address being assigned to the site. If the specified site IP address is owned by the appliance (for example, a MIP address or SNIP address), the site is a local site. Otherwise, it is a remote site.
        attribute :sitetype
        validates :sitetype, expression_inclusion: {:in=>[:REMOTE, :LOCAL], :message=>"%{value} needs to be :REMOTE, :LOCAL"}, allow_nil: true

        # @return [String, nil] IP address for the GSLB site. The GSLB site uses this IP address to communicate with other GSLB sites. For a local site, use any IP address that is owned by the appliance (for example, a SNIP or MIP address, or the IP address of the ADNS service).,Minimum length = 1
        attribute :siteipaddress
        validates :siteipaddress, type: String

        # @return [String, nil] Public IP address for the local site. Required only if the appliance is deployed in a private address space and the site has a public IP address hosted on an external firewall or a NAT device.,Minimum length = 1
        attribute :publicip
        validates :publicip, type: String

        # @return [:enabled, :disabled, nil] Exchange metrics with other sites. Metrics are exchanged by using Metric Exchange Protocol (MEP). The appliances in the GSLB setup exchange health information once every second.,If you disable metrics exchange, you can use only static load balancing methods (such as round robin, static proximity, or the hash-based methods), and if you disable metrics exchange when a dynamic load balancing method (such as least connection) is in operation, the appliance falls back to round robin. Also, if you disable metrics exchange, you must use a monitor to determine the state of GSLB services. Otherwise, the service is marked as DOWN.
        attribute :metricexchange
        validates :metricexchange, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Exchange, with other GSLB sites, network metrics such as round-trip time (RTT), learned from communications with various local DNS (LDNS) servers used by clients. RTT information is used in the dynamic RTT load balancing method, and is exchanged every 5 seconds.
        attribute :nwmetricexchange
        validates :nwmetricexchange, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Exchange persistent session entries with other GSLB sites every five seconds.
        attribute :sessionexchange
        validates :sessionexchange, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:ALWAYS, :MEPDOWN, :MEPDOWN_SVCDOWN, nil] Specify the conditions under which the GSLB service must be monitored by a monitor, if one is bound. Available settings function as follows:,* C(ALWAYS) - Monitor the GSLB service at all times.,* C(MEPDOWN) - Monitor the GSLB service only when the exchange of metrics through the Metrics Exchange Protocol (MEP) is disabled.,C(MEPDOWN_SVCDOWN) - Monitor the service in either of the following situations:,* The exchange of metrics through MEP is disabled.,* The exchange of metrics through MEP is enabled but the status of the service, learned through metrics exchange, is DOWN.
        attribute :triggermonitor
        validates :triggermonitor, expression_inclusion: {:in=>[:ALWAYS, :MEPDOWN, :MEPDOWN_SVCDOWN], :message=>"%{value} needs to be :ALWAYS, :MEPDOWN, :MEPDOWN_SVCDOWN"}, allow_nil: true

        # @return [Object, nil] Parent site of the GSLB site, in a parent-child topology.
        attribute :parentsite

        # @return [Object, nil] Cluster IP address. Specify this parameter to connect to the remote cluster site for GSLB auto-sync. Note: The cluster IP address is defined when creating the cluster.
        attribute :clip

        # @return [Object, nil] IP address to be used to globally access the remote cluster when it is deployed behind a NAT. It can be same as the normal cluster IP address.
        attribute :publicclip

        # @return [Object, nil] The naptr replacement suffix configured here will be used to construct the naptr replacement field in NAPTR record.,Minimum length = 1
        attribute :naptrreplacementsuffix
      end
    end
  end
end
