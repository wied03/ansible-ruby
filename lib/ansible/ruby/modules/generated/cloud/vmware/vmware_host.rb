# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to add / remove / reconnect an ESXi host to / from vCenter.
      class Vmware_host < Base
        # @return [String] Name of the datacenter to add the host.,Aliases added in version 2.6.
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [String, nil] Name of the cluster to add the host.,If C(folder) is not set, then this parameter is required.,Aliases added in version 2.6.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [String, nil] Name of the folder under which host to add.,If C(cluster_name) is not set, then this parameter is required.,For example, if there is a datacenter 'dc1' under folder called 'Site1' then, this value will be '/Site1/dc1/host'.,Here 'host' is an invisible folder under VMware Web Client.,Another example, if there is a nested folder structure like '/myhosts/india/pune' under datacenter 'dc2', then C(folder) value will be '/dc2/host/myhosts/india/pune'.,Other Examples: ,  - '/Site2/dc2/Asia-Cluster/host',  - '/dc3/Asia-Cluster/host'
        attribute :folder
        validates :folder, type: String

        # @return [Boolean, nil] If set to C(True), then the host should be connected as soon as it is added.,This parameter is ignored if state is set to a value other than C(present).
        attribute :add_connected
        validates :add_connected, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] ESXi hostname to manage.
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true, type: String

        # @return [String, nil] ESXi username.,Required for adding a host.,Optional for reconnect.,Unused for removing.,No longer a required parameter from version 2.5.
        attribute :esxi_username
        validates :esxi_username, type: String

        # @return [String, nil] ESXi password.,Required for adding a host.,Optional for reconnect.,Unused for removing.,No longer a required parameter from version 2.5.
        attribute :esxi_password
        validates :esxi_password, type: String

        # @return [:present, :absent, :add_or_reconnect, :reconnect, nil] If set to C(present), then add the host if host is absent.,If set to C(present), then do nothing if host already exists.,If set to C(absent), then remove the host if host is present.,If set to C(absent), then do nothing if host already does not exists.,If set to C(add_or_reconnect), then add the host if it's absent else reconnect it.,If set to C(reconnect), then reconnect the host if it's present else fail.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :add_or_reconnect, :reconnect], :message=>"%{value} needs to be :present, :absent, :add_or_reconnect, :reconnect"}, allow_nil: true

        # @return [String, nil] Specifying the hostsystem certificate's thumbprint.,Use following command to get hostsystem certificate's thumbprint - ,# openssl x509 -in /etc/vmware/ssl/rui.crt -fingerprint -sha1 -noout
        attribute :esxi_ssl_thumbprint
        validates :esxi_ssl_thumbprint, type: String
      end
    end
  end
end
