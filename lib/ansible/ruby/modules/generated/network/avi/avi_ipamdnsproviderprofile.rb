# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure IpamDnsProviderProfile object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_ipamdnsproviderprofile < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Symbol, nil] If this flag is set, only allocate ip from networks in the virtual service vrf.,Applicable for avi vantage ipam only.,Field introduced in 17.2.4.,Default value when not specified in API or module is interpreted by Avi Controller as False.
        attribute :allocate_ip_in_vrf
        validates :allocate_ip_in_vrf, type: Symbol

        # @return [Object, nil] Provider details if type is aws.
        attribute :aws_profile

        # @return [Object, nil] Provider details if type is microsoft azure.,Field introduced in 17.2.1.
        attribute :azure_profile

        # @return [Object, nil] Provider details if type is custom.,Field introduced in 17.1.1.
        attribute :custom_profile

        # @return [Object, nil] Provider details if type is google cloud.
        attribute :gcp_profile

        # @return [Object, nil] Provider details if type is infoblox.
        attribute :infoblox_profile

        # @return [Hash, nil] Provider details if type is avi.
        attribute :internal_profile
        validates :internal_profile, type: Hash

        # @return [String] Name for the ipam/dns provider profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Provider details if type is openstack.
        attribute :openstack_profile

        # @return [Object, nil] Field introduced in 17.1.1.
        attribute :proxy_configuration

        # @return [String, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref
        validates :tenant_ref, type: String

        # @return [String] Provider type for the ipam/dns provider profile.,Enum options - IPAMDNS_TYPE_INFOBLOX, IPAMDNS_TYPE_AWS, IPAMDNS_TYPE_OPENSTACK, IPAMDNS_TYPE_GCP, IPAMDNS_TYPE_INFOBLOX_DNS, IPAMDNS_TYPE_CUSTOM,,IPAMDNS_TYPE_CUSTOM_DNS, IPAMDNS_TYPE_AZURE, IPAMDNS_TYPE_INTERNAL, IPAMDNS_TYPE_INTERNAL_DNS, IPAMDNS_TYPE_AWS_DNS, IPAMDNS_TYPE_AZURE_DNS.
        attribute :type
        validates :type, presence: true, type: String

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Uuid of the ipam/dns provider profile.
        attribute :uuid
      end
    end
  end
end
