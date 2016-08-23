# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_datacenter < Base
        # @return [Object] The hostname or IP address of the vSphere vCenter API server
        attribute :hostname
        validates :hostname, presence: true

        # @return [Object] The username of the vSphere vCenter
        attribute :username
        validates :username, presence: true

        # @return [Object] The password of the vSphere vCenter
        attribute :password
        validates :password, presence: true

        # @return [Object] The name of the datacenter the cluster will be created in.
        attribute :datacenter_name
        validates :datacenter_name, presence: true

        # @return [String] If the datacenter should be present or absent
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
