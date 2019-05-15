# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind EPGs to Physical and Virtual Domains on Cisco ACI fabrics.
      class Aci_epg_to_domain < Base
        # @return [:encap, :useg, nil] Allows micro-segmentation.,The APIC defaults to C(encap) when unset during creation.
        attribute :allow_useg
        validates :allow_useg, inclusion: {:in=>[:encap, :useg], :message=>"%{value} needs to be :encap, :useg"}, allow_nil: true

        # @return [String, nil] Name of an existing application network profile, that will contain the EPGs.
        attribute :ap
        validates :ap, type: String

        # @return [:immediate, :lazy, nil] Determines when the policy is pushed to hardware Policy CAM.,The APIC defaults to C(lazy) when unset during creation.
        attribute :deploy_immediacy
        validates :deploy_immediacy, inclusion: {:in=>[:immediate, :lazy], :message=>"%{value} needs to be :immediate, :lazy"}, allow_nil: true

        # @return [String, nil] Name of the physical or virtual domain being associated with the EPG.
        attribute :domain
        validates :domain, type: String

        # @return [:phys, :vmm, nil] Determines if the Domain is physical (phys) or virtual (vmm).
        attribute :domain_type
        validates :domain_type, inclusion: {:in=>[:phys, :vmm], :message=>"%{value} needs to be :phys, :vmm"}, allow_nil: true

        # @return [Object, nil] The VLAN encapsulation for the EPG when binding a VMM Domain with static encap_mode.,This acts as the secondary encap when using useg.,Accepted values range between C(1) and C(4096).
        attribute :encap

        # @return [:auto, :vlan, :vxlan, nil] The ecapsulataion method to be used.,The APIC defaults to C(auto) when unset during creation.
        attribute :encap_mode
        validates :encap_mode, inclusion: {:in=>[:auto, :vlan, :vxlan], :message=>"%{value} needs to be :auto, :vlan, :vxlan"}, allow_nil: true

        # @return [String, nil] Name of the end point group.
        attribute :epg
        validates :epg, type: String

        # @return [Object, nil] Determines if netflow should be enabled.,The APIC defaults to C(no) when unset during creation.
        attribute :netflow

        # @return [Object, nil] Determines the primary VLAN ID when using useg.,Accepted values range between C(1) and C(4096).
        attribute :primary_encap

        # @return [:immediate, :lazy, :"pre-provision", nil] Determines when the policies should be resolved and available.,The APIC defaults to C(lazy) when unset during creation.
        attribute :resolution_immediacy
        validates :resolution_immediacy, inclusion: {:in=>[:immediate, :lazy, :"pre-provision"], :message=>"%{value} needs to be :immediate, :lazy, :\"pre-provision\""}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [String, nil] Name of an existing tenant.
        attribute :tenant
        validates :tenant, type: String

        # @return [:cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware, nil] The VM platform for VMM Domains.,Support for Kubernetes was added in ACI v3.0.,Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.
        attribute :vm_provider
        validates :vm_provider, inclusion: {:in=>[:cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware], :message=>"%{value} needs to be :cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware"}, allow_nil: true
      end
    end
  end
end
