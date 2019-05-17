# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure Cloud object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_cloud < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Apicconfiguration settings for cloud.
        attribute :apic_configuration

        # @return [Symbol, nil] Boolean flag to set apic_mode.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :apic_mode
        validates :apic_mode, type: Symbol

        # @return [Object, nil] Awsconfiguration settings for cloud.
        attribute :aws_configuration

        # @return [Object, nil] Field introduced in 17.2.1.
        attribute :azure_configuration

        # @return [Object, nil] Cloudstackconfiguration settings for cloud.
        attribute :cloudstack_configuration

        # @return [Object, nil] Custom tags for all avi created resources in the cloud infrastructure.,Field introduced in 17.1.5.
        attribute :custom_tags

        # @return [Symbol, nil] Select the ip address management scheme.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :dhcp_enabled
        validates :dhcp_enabled, type: Symbol

        # @return [Object, nil] Dns profile for the cloud.,It is a reference to an object of type ipamdnsproviderprofile.
        attribute :dns_provider_ref

        # @return [Object, nil] Dockerconfiguration settings for cloud.
        attribute :docker_configuration

        # @return [Object, nil] Dns profile for east-west services.,It is a reference to an object of type ipamdnsproviderprofile.
        attribute :east_west_dns_provider_ref

        # @return [Object, nil] Ipam profile for east-west services.,Warning - please use virtual subnets in this ipam profile that do not conflict with the underlay networks or any overlay networks in the cluster.,For example in aws and gcp, 169.254.0.0/16 is used for storing instance metadata.,Hence, it should not be used in this profile.,It is a reference to an object of type ipamdnsproviderprofile.
        attribute :east_west_ipam_provider_ref

        # @return [Symbol, nil] Use static routes for vip side network resolution during virtualservice placement.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :enable_vip_static_routes
        validates :enable_vip_static_routes, type: Symbol

        # @return [Object, nil] Ipam profile for the cloud.,It is a reference to an object of type ipamdnsproviderprofile.
        attribute :ipam_provider_ref

        # @return [Object, nil] Specifies the default license tier which would be used by new se groups.,This field by default inherits the value from system configuration.,Enum options - ENTERPRISE_16, ENTERPRISE_18.,Field introduced in 17.2.5.
        attribute :license_tier

        # @return [String, nil] If no license type is specified then default license enforcement for the cloud type is chosen.,The default mappings are container cloud is max ses, openstack and vmware is cores and linux it is sockets.,Enum options - LIC_BACKEND_SERVERS, LIC_SOCKETS, LIC_CORES, LIC_HOSTS, LIC_SE_BANDWIDTH.
        attribute :license_type
        validates :license_type, type: String

        # @return [Object, nil] Linuxserverconfiguration settings for cloud.
        attribute :linuxserver_configuration

        # @return [Object, nil] Mesosconfiguration settings for cloud.
        attribute :mesos_configuration

        # @return [Integer, nil] Mtu setting for the cloud.,Default value when not specified in API or module is interpreted by Avi Controller as 1500.,Units(BYTES).
        attribute :mtu
        validates :mtu, type: Integer

        # @return [String] Name of the object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Configuration parameters for nsx manager.,Field introduced in 17.1.1.
        attribute :nsx_configuration

        # @return [Object, nil] Default prefix for all automatically created objects in this cloud.,This prefix can be overridden by the se-group template.
        attribute :obj_name_prefix

        # @return [Object, nil] Openstackconfiguration settings for cloud.
        attribute :openstack_configuration

        # @return [Object, nil] Oshiftk8sconfiguration settings for cloud.
        attribute :oshiftk8s_configuration

        # @return [Symbol, nil] Prefer static routes over interface routes during virtualservice placement.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :prefer_static_routes
        validates :prefer_static_routes, type: Symbol

        # @return [Object, nil] Proxyconfiguration settings for cloud.
        attribute :proxy_configuration

        # @return [Object, nil] Rancherconfiguration settings for cloud.
        attribute :rancher_configuration

        # @return [Symbol, nil] Dns records for vips are added/deleted based on the operational state of the vips.,Field introduced in 17.1.12.,Default value when not specified in API or module is interpreted by Avi Controller as True.
        attribute :state_based_dns_registration
        validates :state_based_dns_registration, type: Symbol

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid

        # @return [Object, nil] Vcloudairconfiguration settings for cloud.
        attribute :vca_configuration

        # @return [Hash, nil] Vcenterconfiguration settings for cloud.
        attribute :vcenter_configuration
        validates :vcenter_configuration, type: Hash

        # @return [String] Cloud type.,Enum options - CLOUD_NONE, CLOUD_VCENTER, CLOUD_OPENSTACK, CLOUD_AWS, CLOUD_VCA, CLOUD_APIC, CLOUD_MESOS, CLOUD_LINUXSERVER, CLOUD_DOCKER_UCP,,CLOUD_RANCHER, CLOUD_OSHIFT_K8S, CLOUD_AZURE.,Default value when not specified in API or module is interpreted by Avi Controller as CLOUD_NONE.
        attribute :vtype
        validates :vtype, presence: true, type: String
      end
    end
  end
end
