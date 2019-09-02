# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages vCMP guests on a BIG-IP. This functionality only exists on actual hardware and must be enabled by provisioning C(vcmp) with the C(bigip_provision) module.
      class Bigip_vcmp_guest < Base
        # @return [String] The name of the vCMP guest to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String, nil] VLANs that the guest uses to communicate with other guests, the host, and with the external network. The available VLANs in the list are those that are currently configured on the vCMP host.,The order of these VLANs is not important; in fact, it's ignored. This module will order the VLANs for you automatically. Therefore, if you deliberately re-order them in subsequent tasks, you will find that this module will B(not) register a change.
        attribute :vlans
        validates :vlans, type: TypeGeneric.new(String)

        # @return [Object, nil] Specifies the base software release ISO image file for installing the TMOS hypervisor instance and any licensed BIG-IP modules onto the guest's virtual disk. When creating a new guest, this parameter is required.
        attribute :initial_image

        # @return [:bridged, :isolated, :"host only", nil] Specifies the method by which the management address is used in the vCMP guest.,When C(bridged), specifies that the guest can communicate with the vCMP host's management network.,When C(isolated), specifies that the guest is isolated from the vCMP host's management network. In this case, the only way that a guest can communicate with the vCMP host is through the console port or through a self IP address on the guest that allows traffic through port 22.,When C(host only), prevents the guest from installing images and hotfixes other than those provided by the hypervisor.,If the guest setting is C(isolated) or C(host only), the C(mgmt_address) does not apply.,Concerning mode changing, changing C(bridged) to C(isolated) causes the vCMP host to remove all of the guest's management interfaces from its bridged management network. This immediately disconnects the guest's VMs from the physical management network. Changing C(isolated) to C(bridged) causes the vCMP host to dynamically add the guest's management interfaces to the bridged management network. This immediately connects all of the guest's VMs to the physical management network. Changing this property while the guest is in the C(configured) or C(provisioned) state has no immediate effect.
        attribute :mgmt_network
        validates :mgmt_network, expression_inclusion: {:in=>[:bridged, :isolated, :"host only"], :message=>"%{value} needs to be :bridged, :isolated, :\"host only\""}, allow_nil: true

        # @return [Symbol, nil] When C(state) is C(absent), will additionally delete the virtual disk associated with the vCMP guest. By default, this value is C(no).
        attribute :delete_virtual_disk
        validates :delete_virtual_disk, type: Symbol

        # @return [String, nil] Specifies the IP address, and subnet or subnet mask that you use to access the guest when you want to manage a module running within the guest. This parameter is required if the C(mgmt_network) parameter is C(bridged).,When creating a new guest, if you do not specify a network or network mask, a default of C(/24) (C(255.255.255.0)) will be assumed.
        attribute :mgmt_address
        validates :mgmt_address, type: String

        # @return [Object, nil] Specifies the gateway address for the C(mgmt_address).,If this value is not specified when creating a new guest, it is set to C(none).,The value C(none) can be used during an update to remove this value.
        attribute :mgmt_route

        # @return [:configured, :disabled, :provisioned, :present, :absent, nil] The state of the vCMP guest on the system. Each state implies the actions of all states before it.,When C(configured), guarantees that the vCMP guest exists with the provided attributes. Additionally, ensures that the vCMP guest is turned off.,When C(disabled), behaves the same as C(configured) the name of this state is just a convenience for the user that is more understandable.,When C(provisioned), will ensure that the guest is created and installed. This state will not start the guest; use C(deployed) for that. This state is one step beyond C(present) as C(present) will not install the guest; only setup the configuration for it to be installed.,When C(present), ensures the guest is properly provisioned and starts the guest so that it is in a running state.,When C(absent), removes the vCMP from the system.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:configured, :disabled, :provisioned, :present, :absent], :message=>"%{value} needs to be :configured, :disabled, :provisioned, :present, :absent"}, allow_nil: true

        # @return [Object, nil] Specifies the number of cores that the system allocates to the guest.,Each core represents a portion of CPU and memory. Therefore, the amount of memory allocated per core is directly tied to the amount of CPU. This amount of memory varies per hardware platform type.,The number you can specify depends on the type of hardware you have.,In the event of a reboot, the system persists the guest to the same slot on which it ran prior to the reboot.
        attribute :cores_per_slot

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [Object, nil] Specifies the number of slots for the system to use for creating the guest.,This value dictates how many cores a guest is allocated from each slot that it is assigned to.,Possible values are dependent on the type of blades being used in this cluster.,The default value depends on the type of blades being used in this cluster.
        attribute :number_of_slots

        # @return [Object, nil] Specifies the minimum number of slots that the guest must be assigned to in order to deploy.,This field dictates the number of slots that the guest must be assigned to.,If at the end of any allocation attempt the guest is not assigned to at least this many slots, the attempt fails and the change that initiated it is reverted.,A guest's C(min_number_of_slots) value cannot be greater than its C(number_of_slots).
        attribute :min_number_of_slots

        # @return [Object, nil] Contains those slots that the guest is allowed to be assigned to.,When the host determines which slots this guest should be assigned to, only slots in this list will be considered.,This is a good way to force guests to be assigned only to particular slots, or, by configuring disjoint C(allowed_slots) on two guests, that those guests are never assigned to the same slot.,By default this list includes every available slot in the cluster. This means, by default, the guest may be assigned to any slot.
        attribute :allowed_slots
      end
    end
  end
end
