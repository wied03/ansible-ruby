# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind Domain to Encap Pools on Cisco ACI fabrics.
      class Aci_domain_to_encap_pool < Base
        # @return [String, nil] Name of the domain being associated with the Encap Pool.
        attribute :domain
        validates :domain, type: String

        # @return [:fc, :l2dom, :l3dom, :phys, :vmm, nil] Determines if the Domain is physical (phys) or virtual (vmm).
        attribute :domain_type
        validates :domain_type, expression_inclusion: {:in=>[:fc, :l2dom, :l3dom, :phys, :vmm], :message=>"%{value} needs to be :fc, :l2dom, :l3dom, :phys, :vmm"}, allow_nil: true

        # @return [String, nil] The name of the pool.
        attribute :pool
        validates :pool, type: String

        # @return [:dynamic, :static, nil] The method used for allocating encaps to resources.,Only vlan and vsan support allocation modes.
        attribute :pool_allocation_mode
        validates :pool_allocation_mode, expression_inclusion: {:in=>[:dynamic, :static], :message=>"%{value} needs to be :dynamic, :static"}, allow_nil: true

        # @return [:vlan, :vsan, :vxlan] The encap type of C(pool).
        attribute :pool_type
        validates :pool_type, presence: true, expression_inclusion: {:in=>[:vlan, :vsan, :vxlan], :message=>"%{value} needs to be :vlan, :vsan, :vxlan"}

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [:cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware, nil] The VM platform for VMM Domains.,Support for Kubernetes was added in ACI v3.0.,Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.
        attribute :vm_provider
        validates :vm_provider, expression_inclusion: {:in=>[:cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware], :message=>"%{value} needs to be :cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware"}, allow_nil: true
      end
    end
  end
end
