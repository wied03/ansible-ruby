# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The manageiq_provider module supports adding, updating, and deleting provider in ManageIQ.
      class Manageiq_provider < Base
        # @return [:absent, :present, :refresh, nil] absent - provider should not exist, present - provider should be present, refresh - provider will be refreshed
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :refresh], :message=>"%{value} needs to be :absent, :present, :refresh"}, allow_nil: true

        # @return [String] The provider's name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:Openshift, :Amazon, :oVirt, :VMware, :Azure, :Director, :OpenStack, :GCE] The provider's type.
        attribute :type
        validates :type, presence: true, expression_inclusion: {:in=>[:Openshift, :Amazon, :oVirt, :VMware, :Azure, :Director, :OpenStack, :GCE], :message=>"%{value} needs to be :Openshift, :Amazon, :oVirt, :VMware, :Azure, :Director, :OpenStack, :GCE"}

        # @return [String, nil] The ManageIQ zone name that will manage the provider.
        attribute :zone
        validates :zone, type: String

        # @return [String, nil] The provider region name to connect to (e.g. AWS region for Amazon).
        attribute :provider_region
        validates :provider_region, type: String

        # @return [Object, nil] The first port in the host VNC range. defaults to None.
        attribute :host_default_vnc_port_start

        # @return [Object, nil] The last port in the host VNC range. defaults to None.
        attribute :host_default_vnc_port_end

        # @return [String, nil] Microsoft Azure subscription ID. defaults to None.
        attribute :subscription
        validates :subscription, type: String

        # @return [String, nil] Google Compute Engine Project ID. defaults to None.
        attribute :project
        validates :project, type: String

        # @return [String, nil] Tenant ID. defaults to None.
        attribute :azure_tenant_id
        validates :azure_tenant_id, type: String

        # @return [:yes, :no, nil] Whether to enable mapping of existing tenants. defaults to False.
        attribute :tenant_mapping_enabled
        validates :tenant_mapping_enabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:v2, :v3, nil] The OpenStack Keystone API version. defaults to None.
        attribute :api_version
        validates :api_version, expression_inclusion: {:in=>[:v2, :v3], :message=>"%{value} needs to be :v2, :v3"}, allow_nil: true

        # @return [Hash, nil] Default endpoint connection information, required if state is true.
        attribute :provider
        validates :provider, type: Hash

        # @return [Hash, nil] Metrics endpoint connection information.
        attribute :metrics
        validates :metrics, type: Hash

        # @return [Object, nil] Alerts endpoint connection information.
        attribute :alerts

        # @return [Hash, nil] SSH key pair used for SSH connections to all hosts in this provider.
        attribute :ssh_keypair
        validates :ssh_keypair, type: Hash
      end
    end
  end
end
