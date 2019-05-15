# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage BIG-IP server configuration. This module is able to manipulate the server definitions in a BIG-IP.
      class Bigip_gtm_server < Base
        # @return [String] The name of the server.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :enabled, :disabled, nil] The server state. If C(absent), an attempt to delete the server will be made. This will only succeed if this server is not in use by a virtual server. C(present) creates the server and enables it. If C(enabled), enable the server if it exists. If C(disabled), create the server if needed, and set state to C(disabled).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] Data center the server belongs to. When creating a new GTM server, this value is required.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [Array<Hash>, Hash, nil] Lists the self IP addresses and translations for each device. When creating a new GTM server, this value is required. This list is a complex list that specifies a number of keys.,The C(name) key specifies a name for the device. The device name must be unique per server. This key is required.,The C(address) key contains an IP address, or list of IP addresses, for the destination server. This key is required.,The C(translation) key contains an IP address to translate the C(address) value above to. This key is optional.,Specifying duplicate C(name) fields is a supported means of providing device addresses. In this scenario, the addresses will be assigned to the C(name)'s list of addresses.
        attribute :devices
        validates :devices, type: TypeGeneric.new(Hash)

        # @return [:"alteon-ace-director", :"cisco-css", :"cisco-server-load-balancer", :"generic-host", :"radware-wsd", :"windows-nt-4.0", :bigip, :"cisco-local-director-v2", :extreme, :"generic-load-balancer", :"sun-solaris", :cacheflow, :"cisco-local-director-v3", :"foundry-server-iron", :netapp, :"windows-2000-server", nil] Specifies the server type. The server type determines the metrics that the system can collect from the server. When creating a new GTM server, the default value C(bigip) is used.
        attribute :server_type
        validates :server_type, inclusion: {:in=>[:"alteon-ace-director", :"cisco-css", :"cisco-server-load-balancer", :"generic-host", :"radware-wsd", :"windows-nt-4.0", :bigip, :"cisco-local-director-v2", :extreme, :"generic-load-balancer", :"sun-solaris", :cacheflow, :"cisco-local-director-v3", :"foundry-server-iron", :netapp, :"windows-2000-server"], :message=>"%{value} needs to be :\"alteon-ace-director\", :\"cisco-css\", :\"cisco-server-load-balancer\", :\"generic-host\", :\"radware-wsd\", :\"windows-nt-4.0\", :bigip, :\"cisco-local-director-v2\", :extreme, :\"generic-load-balancer\", :\"sun-solaris\", :cacheflow, :\"cisco-local-director-v3\", :\"foundry-server-iron\", :netapp, :\"windows-2000-server\""}, allow_nil: true

        # @return [:enabled, :disabled, :"enabled-no-delete", nil] Specifies whether the system auto-discovers the links for this server. When creating a new GTM server, if this parameter is not specified, the default value C(disabled) is used.,If you set this parameter to C(enabled) or C(enabled-no-delete), you must also ensure that the C(virtual_server_discovery) parameter is also set to C(enabled) or C(enabled-no-delete).
        attribute :link_discovery
        validates :link_discovery, inclusion: {:in=>[:enabled, :disabled, :"enabled-no-delete"], :message=>"%{value} needs to be :enabled, :disabled, :\"enabled-no-delete\""}, allow_nil: true

        # @return [:enabled, :disabled, :"enabled-no-delete", nil] Specifies whether the system auto-discovers the virtual servers for this server. When creating a new GTM server, if this parameter is not specified, the default value C(disabled) is used.
        attribute :virtual_server_discovery
        validates :virtual_server_discovery, inclusion: {:in=>[:enabled, :disabled, :"enabled-no-delete"], :message=>"%{value} needs to be :enabled, :disabled, :\"enabled-no-delete\""}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Object, nil] Specifies whether the Global Traffic Manager uses this BIG-IP system to conduct a variety of probes before delegating traffic to it.
        attribute :iquery_options
      end
    end
  end
end
