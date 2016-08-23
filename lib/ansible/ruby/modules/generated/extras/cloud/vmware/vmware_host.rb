# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_host < Base
        # @return [String] Name of the datacenter to add the host
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [String] Name of the cluster to add the host
        attribute :cluster_name
        validates :cluster_name, presence: true, type: String

        # @return [String] ESXi hostname to manage
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true, type: String

        # @return [String] ESXi username
        attribute :esxi_username
        validates :esxi_username, presence: true, type: String

        # @return [String] ESXi password
        attribute :esxi_password
        validates :esxi_password, presence: true, type: String

        # @return [:present, :absent, nil] Add or remove the host
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
