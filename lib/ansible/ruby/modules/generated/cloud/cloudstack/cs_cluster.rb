# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove clusters.
      class Cs_cluster < Base
        # @return [String] name of the cluster.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the zone in which the cluster belongs to.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String

        # @return [Object, nil] Name of the pod in which the cluster belongs to.
        attribute :pod

        # @return [:CloudManaged, :ExternalManaged, nil] Type of the cluster.,Required if C(state=present)
        attribute :cluster_type
        validates :cluster_type, expression_inclusion: {:in=>[:CloudManaged, :ExternalManaged], :message=>"%{value} needs to be :CloudManaged, :ExternalManaged"}, allow_nil: true

        # @return [:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM, nil] Name the hypervisor to be used.,Required if C(state=present).
        attribute :hypervisor
        validates :hypervisor, expression_inclusion: {:in=>[:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM], :message=>"%{value} needs to be :KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM"}, allow_nil: true

        # @return [Object, nil] URL for the cluster
        attribute :url

        # @return [Object, nil] Username for the cluster.
        attribute :username

        # @return [Object, nil] Password for the cluster.
        attribute :password

        # @return [Object, nil] Name of virtual switch used for guest traffic in the cluster.,This would override zone wide traffic label setting.
        attribute :guest_vswitch_name

        # @return [:vmwaresvs, :vmwaredvs, nil] Type of virtual switch used for guest traffic in the cluster.,Allowed values are, vmwaresvs (for VMware standard vSwitch) and vmwaredvs (for VMware distributed vSwitch)
        attribute :guest_vswitch_type
        validates :guest_vswitch_type, expression_inclusion: {:in=>[:vmwaresvs, :vmwaredvs], :message=>"%{value} needs to be :vmwaresvs, :vmwaredvs"}, allow_nil: true

        # @return [Object, nil] Name of virtual switch used for public traffic in the cluster.,This would override zone wide traffic label setting.
        attribute :public_vswitch_name

        # @return [:vmwaresvs, :vmwaredvs, nil] Type of virtual switch used for public traffic in the cluster.,Allowed values are, vmwaresvs (for VMware standard vSwitch) and vmwaredvs (for VMware distributed vSwitch)
        attribute :public_vswitch_type
        validates :public_vswitch_type, expression_inclusion: {:in=>[:vmwaresvs, :vmwaredvs], :message=>"%{value} needs to be :vmwaresvs, :vmwaredvs"}, allow_nil: true

        # @return [Object, nil] IP address of the VSM associated with this cluster.
        attribute :vms_ip_address

        # @return [Object, nil] Username for the VSM associated with this cluster.
        attribute :vms_username

        # @return [Object, nil] Password for the VSM associated with this cluster.
        attribute :vms_password

        # @return [Object, nil] Ovm3 native OCFS2 clustering enabled for cluster.
        attribute :ovm3_cluster

        # @return [Object, nil] Ovm3 native pooling enabled for cluster.
        attribute :ovm3_pool

        # @return [Object, nil] Ovm3 vip to use for pool (and cluster).
        attribute :ovm3_vip

        # @return [:present, :absent, :disabled, :enabled, nil] State of the cluster.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :disabled, :enabled], :message=>"%{value} needs to be :present, :absent, :disabled, :enabled"}, allow_nil: true
      end
    end
  end
end
