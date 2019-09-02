# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind AEPs to Physical or Virtual Domains on Cisco ACI fabrics.
      class Aci_aep_to_domain < Base
        # @return [String, nil] The name of the Attachable Access Entity Profile.
        attribute :aep
        validates :aep, type: String

        # @return [String, nil] Name of the physical or virtual domain being associated with the AEP.
        attribute :domain
        validates :domain, type: String

        # @return [:fc, :l2dom, :l3dom, :phys, :vmm, nil] Determines if the Domain is physical (phys) or virtual (vmm).
        attribute :domain_type
        validates :domain_type, expression_inclusion: {:in=>[:fc, :l2dom, :l3dom, :phys, :vmm], :message=>"%{value} needs to be :fc, :l2dom, :l3dom, :phys, :vmm"}, allow_nil: true

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
