# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Uses pyvmomi to ...
      # copy a template to a new virtualmachine
      # poweron/poweroff/restart a virtualmachine
      # remove a virtualmachine
      class Vmware_guest < Base
        # @return [:present, :absent, :poweredon, :poweredoff, :restarted, :suspended] What state should the virtualmachine be in?
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :poweredon, :poweredoff, :restarted, :suspended], :message=>"%{value} needs to be :present, :absent, :poweredon, :poweredoff, :restarted, :suspended"}

        # @return [String] Name of the newly deployed guest
        attribute :name
        validates :name, presence: true, type: String

        # @return [:first, :last, nil] If multiple vms matching the name, use the first or last found
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [Object, nil] UUID of the instance to manage if known, this is vmware's unique identifier.,This is required if name is not supplied.
        attribute :uuid

        # @return [String, nil] Name of the template to deploy, if needed to create the guest (state=present).,If the guest exists already this setting will be ignored.
        attribute :template
        validates :template, type: String

        # @return [String, nil] Destination folder path for the new guest
        attribute :folder
        validates :folder, type: String

        # @return [Hash, nil] Attributes such as cpus, memory, osid, and disk controller
        attribute :hardware
        validates :hardware, type: Hash

        # @return [Array<Hash>, Hash, nil] A list of disks to add
        attribute :disk
        validates :disk, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] A list of nics to add
        attribute :nic
        validates :nic, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Wait until vcenter detects an IP address for the guest
        attribute :wait_for_ip_address
        validates :wait_for_ip_address, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Ignore warnings and complete the actions
        attribute :force

        # @return [String] Destination datacenter for the deploy operation
        attribute :datacenter
        validates :datacenter, presence: true, type: String

        # @return [String] The esxi hostname where the VM will run.
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true, type: String
      end
    end
  end
end
