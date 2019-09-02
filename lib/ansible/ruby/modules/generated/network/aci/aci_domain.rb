# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage physical, virtual, bridged, routed or FC domain profiles on Cisco ACI fabrics.
      class Aci_domain < Base
        # @return [String, nil] Name of the physical, virtual, bridged routed or FC domain profile.
        attribute :domain
        validates :domain, type: String

        # @return [:fc, :l2dom, :l3dom, :phys, :vmm, nil] The type of domain profile.,C(fc): The FC domain profile is a policy pertaining to single FC Management domain,C(l2dom): The external bridged domain profile is a policy for managing L2 bridged infrastructure bridged outside the fabric.,C(l3dom): The external routed domain profile is a policy for managing L3 routed infrastructure outside the fabric.,C(phys): The physical domain profile stores the physical resources and encap resources that should be used for EPGs associated with this domain.,C(vmm): The VMM domain profile is a policy for grouping VM controllers with similar networking policy requirements.
        attribute :domain_type
        validates :domain_type, expression_inclusion: {:in=>[:fc, :l2dom, :l3dom, :phys, :vmm], :message=>"%{value} needs to be :fc, :l2dom, :l3dom, :phys, :vmm"}, allow_nil: true

        # @return [:AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified, nil] The target Differentiated Service (DSCP) value.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :dscp
        validates :dscp, expression_inclusion: {:in=>[:AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified], :message=>"%{value} needs to be :AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified"}, allow_nil: true

        # @return [:unknown, :vlan, :vxlan, nil] The layer 2 encapsulation protocol to use with the virtual switch.
        attribute :encap_mode
        validates :encap_mode, expression_inclusion: {:in=>[:unknown, :vlan, :vxlan], :message=>"%{value} needs to be :unknown, :vlan, :vxlan"}, allow_nil: true

        # @return [Object, nil] The muticast IP address to use for the virtual switch.
        attribute :multicast_address

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [:cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware, nil] The VM platform for VMM Domains.,Support for Kubernetes was added in ACI v3.0.,Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.
        attribute :vm_provider
        validates :vm_provider, expression_inclusion: {:in=>[:cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware], :message=>"%{value} needs to be :cloudfoundry, :kubernetes, :microsoft, :openshift, :openstack, :redhat, :vmware"}, allow_nil: true

        # @return [:avs, :default, :dvs, :unknown, nil] The virtual switch to use for vmm domains.,The APIC defaults to C(default) when unset during creation.
        attribute :vswitch
        validates :vswitch, expression_inclusion: {:in=>[:avs, :default, :dvs, :unknown], :message=>"%{value} needs to be :avs, :default, :dvs, :unknown"}, allow_nil: true
      end
    end
  end
end
