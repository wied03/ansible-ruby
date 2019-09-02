# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove hosts.
      class Cs_host < Base
        # @return [String] Name of the host.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Url of the host used to create a host.,If not provided, C(http://) and param C(name) is used as url.,Only considered if C(state=present) and host does not yet exist.
        attribute :url

        # @return [Object, nil] Username for the host.,Required if C(state=present) and host does not yet exist.
        attribute :username

        # @return [Object, nil] Password for the host.,Required if C(state=present) and host does not yet exist.
        attribute :password

        # @return [String, nil] Name of the pod.,Required if C(state=present) and host does not yet exist.
        attribute :pod
        validates :pod, type: String

        # @return [String, nil] Name of the cluster.
        attribute :cluster
        validates :cluster, type: String

        # @return [:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM, :Simulator, nil] Name of the cluster.,Required if C(state=present) and host does not yet exist.
        attribute :hypervisor
        validates :hypervisor, expression_inclusion: {:in=>[:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM, :Simulator], :message=>"%{value} needs to be :KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM, :Simulator"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Allocation state of the host.
        attribute :allocation_state
        validates :allocation_state, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Array<String>, String, nil] Tags of the host.
        attribute :host_tags
        validates :host_tags, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] State of the host.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Name of the zone in which the host should be deployed.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String
      end
    end
  end
end
