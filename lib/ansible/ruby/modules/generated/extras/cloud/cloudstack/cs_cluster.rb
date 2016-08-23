# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_cluster < Base
        # @return [String] name of the cluster.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of the zone in which the cluster belongs to.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String

        # @return [Object] Name of the pod in which the cluster belongs to.
        attribute :pod

        # @return [String] Type of the cluster.,Required if C(state=present)
        attribute :cluster_type
        validates :cluster_type, inclusion: {:in=>[:CloudManaged, :ExternalManaged], :message=>"%{value} needs to be :CloudManaged, :ExternalManaged"}, allow_nil: true

        # @return [String] Name the hypervisor to be used.,Required if C(state=present).
        attribute :hypervisor
        validates :hypervisor, inclusion: {:in=>[:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM], :message=>"%{value} needs to be :KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM"}, allow_nil: true

        # @return [Object] URL for the cluster
        attribute :url

        # @return [Object] Username for the cluster.
        attribute :username

        # @return [Object] Password for the cluster.
        attribute :password

        # @return [Object] Name of virtual switch used for guest traffic in the cluster.,This would override zone wide traffic label setting.
        attribute :guest_vswitch_name

        # @return [Object] Type of virtual switch used for guest traffic in the cluster.,Allowed values are, vmwaresvs (for VMware standard vSwitch) and vmwaredvs (for VMware distributed vSwitch)
        attribute :guest_vswitch_type
        validates :guest_vswitch_type, inclusion: {:in=>[:vmwaresvs, :vmwaredvs], :message=>"%{value} needs to be :vmwaresvs, :vmwaredvs"}, allow_nil: true

        # @return [Object] Name of virtual switch used for public traffic in the cluster.,This would override zone wide traffic label setting.
        attribute :public_vswitch_name

        # @return [Object] Type of virtual switch used for public traffic in the cluster.,Allowed values are, vmwaresvs (for VMware standard vSwitch) and vmwaredvs (for VMware distributed vSwitch)
        attribute :public_vswitch_type
        validates :public_vswitch_type, inclusion: {:in=>[:vmwaresvs, :vmwaredvs], :message=>"%{value} needs to be :vmwaresvs, :vmwaredvs"}, allow_nil: true

        # @return [Object] IP address of the VSM associated with this cluster.
        attribute :vms_ip_address

        # @return [Object] Username for the VSM associated with this cluster.
        attribute :vms_username

        # @return [Object] Password for the VSM associated with this cluster.
        attribute :vms_password

        # @return [Object] Ovm3 native OCFS2 clustering enabled for cluster.
        attribute :ovm3_cluster

        # @return [Object] Ovm3 native pooling enabled for cluster.
        attribute :ovm3_pool

        # @return [Object] Ovm3 vip to use for pool (and cluster).
        attribute :ovm3_vip

        # @return [String] State of the cluster.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :disabled, :enabled], :message=>"%{value} needs to be :present, :absent, :disabled, :enabled"}, allow_nil: true
      end
    end
  end
end
