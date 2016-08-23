# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_host < Base
        # @return [Object] Name of the datacenter to add the host
        attribute :datacenter_name
        validates :datacenter_name, presence: true

        # @return [Object] Name of the cluster to add the host
        attribute :cluster_name
        validates :cluster_name, presence: true

        # @return [Object] ESXi hostname to manage
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true

        # @return [Object] ESXi username
        attribute :esxi_username
        validates :esxi_username, presence: true

        # @return [Object] ESXi password
        attribute :esxi_password
        validates :esxi_password, presence: true

        # @return [String] Add or remove the host
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
