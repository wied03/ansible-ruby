# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collect facts from F5 BIG-IP devices.
      class Bigip_device_facts < Base
        # @return [:all, :monitors, :profiles, :"asm-policy-stats", :"client-ssl-profiles", :devices, :"device-groups", :"external-monitors", :"fasthttp-profiles", :"fastl4-profiles", :"gateway-icmp-monitors", :"gtm-pools", :"gtm-servers", :"gtm-wide-ips", :"gtm-a-pools", :"gtm-a-wide-ips", :"gtm-aaaa-pools", :"gtm-aaaa-wide-ips", :"gtm-cname-pools", :"gtm-cname-wide-ips", :"gtm-mx-pools", :"gtm-mx-wide-ips", :"gtm-naptr-pools", :"gtm-naptr-wide-ips", :"gtm-srv-pools", :"gtm-srv-wide-ips", :"http-monitors", :"https-monitors", :"http-profiles", :"iapp-services", :"iapplx-packages", :"icmp-monitors", :interfaces, :"internal-data-groups", :irules, :"ltm-pools", :nodes, :"oneconnect-profiles", :partitions, :"provision-info", :"self-ips", :"server-ssl-profiles", :"software-volumes", :"software-images", :"software-hotfixes", :"ssl-certs", :"ssl-keys", :"system-db", :"system-info", :"tcp-monitors", :"tcp-half-open-monitors", :"tcp-profiles", :"traffic-groups", :trunks, :"udp-profiles", :"vcmp-guests", :"virtual-addresses", :"virtual-servers", :vlans, :"!all", :"!monitors", :"!profiles", :"!asm-policy-stats", :"!client-ssl-profiles", :"!devices", :"!device-groups", :"!external-monitors", :"!fasthttp-profiles", :"!fastl4-profiles", :"!gateway-icmp-monitors", :"!gtm-pools", :"!gtm-servers", :"!gtm-wide-ips", :"!gtm-a-pools", :"!gtm-a-wide-ips", :"!gtm-aaaa-pools", :"!gtm-aaaa-wide-ips", :"!gtm-cname-pools", :"!gtm-cname-wide-ips", :"!gtm-mx-pools", :"!gtm-mx-wide-ips", :"!gtm-naptr-pools", :"!gtm-naptr-wide-ips", :"!gtm-srv-pools", :"!gtm-srv-wide-ips", :"!http-monitors", :"!https-monitors", :"!http-profiles", :"!iapp-services", :"!iapplx-packages", :"!icmp-monitors", :"!interfaces", :"!internal-data-groups", :"!irules", :"!ltm-pools", :"!nodes", :"!oneconnect-profiles", :"!partitions", :"!provision-info", :"!self-ips", :"!server-ssl-profiles", :"!software-volumes", :"!software-images", :"!software-hotfixes", :"!ssl-certs", :"!ssl-keys", :"!system-db", :"!system-info", :"!tcp-monitors", :"!tcp-half-open-monitors", :"!tcp-profiles", :"!traffic-groups", :"!trunks", :"!udp-profiles", :"!vcmp-guests", :"!virtual-addresses", :"!virtual-servers", :"!vlans"] When supplied, this argument will restrict the facts returned to a given subset.,Can specify a list of values to include a larger subset.,Values can also be used with an initial C(!) to specify that a specific subset should not be collected.
        attribute :gather_subset
        validates :gather_subset, presence: true, expression_inclusion: {:in=>[:all, :monitors, :profiles, :"asm-policy-stats", :"client-ssl-profiles", :devices, :"device-groups", :"external-monitors", :"fasthttp-profiles", :"fastl4-profiles", :"gateway-icmp-monitors", :"gtm-pools", :"gtm-servers", :"gtm-wide-ips", :"gtm-a-pools", :"gtm-a-wide-ips", :"gtm-aaaa-pools", :"gtm-aaaa-wide-ips", :"gtm-cname-pools", :"gtm-cname-wide-ips", :"gtm-mx-pools", :"gtm-mx-wide-ips", :"gtm-naptr-pools", :"gtm-naptr-wide-ips", :"gtm-srv-pools", :"gtm-srv-wide-ips", :"http-monitors", :"https-monitors", :"http-profiles", :"iapp-services", :"iapplx-packages", :"icmp-monitors", :interfaces, :"internal-data-groups", :irules, :"ltm-pools", :nodes, :"oneconnect-profiles", :partitions, :"provision-info", :"self-ips", :"server-ssl-profiles", :"software-volumes", :"software-images", :"software-hotfixes", :"ssl-certs", :"ssl-keys", :"system-db", :"system-info", :"tcp-monitors", :"tcp-half-open-monitors", :"tcp-profiles", :"traffic-groups", :trunks, :"udp-profiles", :"vcmp-guests", :"virtual-addresses", :"virtual-servers", :vlans, :"!all", :"!monitors", :"!profiles", :"!asm-policy-stats", :"!client-ssl-profiles", :"!devices", :"!device-groups", :"!external-monitors", :"!fasthttp-profiles", :"!fastl4-profiles", :"!gateway-icmp-monitors", :"!gtm-pools", :"!gtm-servers", :"!gtm-wide-ips", :"!gtm-a-pools", :"!gtm-a-wide-ips", :"!gtm-aaaa-pools", :"!gtm-aaaa-wide-ips", :"!gtm-cname-pools", :"!gtm-cname-wide-ips", :"!gtm-mx-pools", :"!gtm-mx-wide-ips", :"!gtm-naptr-pools", :"!gtm-naptr-wide-ips", :"!gtm-srv-pools", :"!gtm-srv-wide-ips", :"!http-monitors", :"!https-monitors", :"!http-profiles", :"!iapp-services", :"!iapplx-packages", :"!icmp-monitors", :"!interfaces", :"!internal-data-groups", :"!irules", :"!ltm-pools", :"!nodes", :"!oneconnect-profiles", :"!partitions", :"!provision-info", :"!self-ips", :"!server-ssl-profiles", :"!software-volumes", :"!software-images", :"!software-hotfixes", :"!ssl-certs", :"!ssl-keys", :"!system-db", :"!system-info", :"!tcp-monitors", :"!tcp-half-open-monitors", :"!tcp-profiles", :"!traffic-groups", :"!trunks", :"!udp-profiles", :"!vcmp-guests", :"!virtual-addresses", :"!virtual-servers", :"!vlans"], :message=>"%{value} needs to be :all, :monitors, :profiles, :\"asm-policy-stats\", :\"client-ssl-profiles\", :devices, :\"device-groups\", :\"external-monitors\", :\"fasthttp-profiles\", :\"fastl4-profiles\", :\"gateway-icmp-monitors\", :\"gtm-pools\", :\"gtm-servers\", :\"gtm-wide-ips\", :\"gtm-a-pools\", :\"gtm-a-wide-ips\", :\"gtm-aaaa-pools\", :\"gtm-aaaa-wide-ips\", :\"gtm-cname-pools\", :\"gtm-cname-wide-ips\", :\"gtm-mx-pools\", :\"gtm-mx-wide-ips\", :\"gtm-naptr-pools\", :\"gtm-naptr-wide-ips\", :\"gtm-srv-pools\", :\"gtm-srv-wide-ips\", :\"http-monitors\", :\"https-monitors\", :\"http-profiles\", :\"iapp-services\", :\"iapplx-packages\", :\"icmp-monitors\", :interfaces, :\"internal-data-groups\", :irules, :\"ltm-pools\", :nodes, :\"oneconnect-profiles\", :partitions, :\"provision-info\", :\"self-ips\", :\"server-ssl-profiles\", :\"software-volumes\", :\"software-images\", :\"software-hotfixes\", :\"ssl-certs\", :\"ssl-keys\", :\"system-db\", :\"system-info\", :\"tcp-monitors\", :\"tcp-half-open-monitors\", :\"tcp-profiles\", :\"traffic-groups\", :trunks, :\"udp-profiles\", :\"vcmp-guests\", :\"virtual-addresses\", :\"virtual-servers\", :vlans, :\"!all\", :\"!monitors\", :\"!profiles\", :\"!asm-policy-stats\", :\"!client-ssl-profiles\", :\"!devices\", :\"!device-groups\", :\"!external-monitors\", :\"!fasthttp-profiles\", :\"!fastl4-profiles\", :\"!gateway-icmp-monitors\", :\"!gtm-pools\", :\"!gtm-servers\", :\"!gtm-wide-ips\", :\"!gtm-a-pools\", :\"!gtm-a-wide-ips\", :\"!gtm-aaaa-pools\", :\"!gtm-aaaa-wide-ips\", :\"!gtm-cname-pools\", :\"!gtm-cname-wide-ips\", :\"!gtm-mx-pools\", :\"!gtm-mx-wide-ips\", :\"!gtm-naptr-pools\", :\"!gtm-naptr-wide-ips\", :\"!gtm-srv-pools\", :\"!gtm-srv-wide-ips\", :\"!http-monitors\", :\"!https-monitors\", :\"!http-profiles\", :\"!iapp-services\", :\"!iapplx-packages\", :\"!icmp-monitors\", :\"!interfaces\", :\"!internal-data-groups\", :\"!irules\", :\"!ltm-pools\", :\"!nodes\", :\"!oneconnect-profiles\", :\"!partitions\", :\"!provision-info\", :\"!self-ips\", :\"!server-ssl-profiles\", :\"!software-volumes\", :\"!software-images\", :\"!software-hotfixes\", :\"!ssl-certs\", :\"!ssl-keys\", :\"!system-db\", :\"!system-info\", :\"!tcp-monitors\", :\"!tcp-half-open-monitors\", :\"!tcp-profiles\", :\"!traffic-groups\", :\"!trunks\", :\"!udp-profiles\", :\"!vcmp-guests\", :\"!virtual-addresses\", :\"!virtual-servers\", :\"!vlans\""}
      end
    end
  end
end
