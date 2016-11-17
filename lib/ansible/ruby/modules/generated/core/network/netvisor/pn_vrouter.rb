# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute vrouter-create, vrouter-delete, vrouter-modify command.
      # Each fabric, cluster, standalone switch, or virtual network (VNET) can provide its tenants with a virtual router (vRouter) service that forwards traffic between networks and implements Layer 3 protocols.
      # C(vrouter-create) creates a new vRouter service.
      # C(vrouter-delete) deletes a vRouter service.
      # C(vrouter-modify) modifies a vRouter service.
      class Pn_vrouter < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch(es) to run the CLI on.
        attribute :pn_cliswitch

        # @return [:present, :absent, :update] State the action to perform. Use 'present' to create vrouter, 'absent' to delete vrouter and 'update' to modify vrouter.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}

        # @return [String] Specify the name of the vRouter.
        attribute :pn_name
        validates :pn_name, presence: true, type: String

        # @return [String, nil] Specify the name of the VNET.,Required for vrouter-create.
        attribute :pn_vnet
        validates :pn_vnet, type: String

        # @return [:dedicated, :shared, nil] Specify if the vRouter is a dedicated or shared VNET service.
        attribute :pn_service_type
        validates :pn_service_type, inclusion: {:in=>[:dedicated, :shared], :message=>"%{value} needs to be :dedicated, :shared"}, allow_nil: true

        # @return [:enable, :disable, nil] Specify to enable or disable vRouter service.
        attribute :pn_service_state
        validates :pn_service_state, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:hardware, :software, nil] Specify if the vRouter uses software or hardware.,Note that if you specify hardware as router type, you cannot assign IP addresses using DHCP. You must specify a static IP address.
        attribute :pn_router_type
        validates :pn_router_type, inclusion: {:in=>[:hardware, :software], :message=>"%{value} needs to be :hardware, :software"}, allow_nil: true

        # @return [Object, nil] Specifies the VRRP ID for a hardware vrouter.
        attribute :pn_hw_vrrp_id

        # @return [String, nil] Specify the vRouter IP address.
        attribute :pn_router_id
        validates :pn_router_id, type: String

        # @return [Object, nil] Specify the Autonomous System Number(ASN) if the vRouter runs Border Gateway Protocol(BGP).
        attribute :pn_bgp_as

        # @return [:static, :connected, :rip, :ospf, nil] Specify how BGP routes are redistributed.
        attribute :pn_bgp_redistribute
        validates :pn_bgp_redistribute, inclusion: {:in=>[:static, :connected, :rip, :ospf], :message=>"%{value} needs to be :static, :connected, :rip, :ospf"}, allow_nil: true

        # @return [Object, nil] Specify the maximum number of paths for BGP. This is a number between 1 and 255 or 0 to unset.
        attribute :pn_bgp_max_paths

        # @return [Object, nil] Specify other BGP options as a whitespaces separated string within single quotes ''.
        attribute :pn_bgp_options

        # @return [:static, :connected, :ospf, :bgp, nil] Specify how RIP routes are redistributed.
        attribute :pn_rip_redistribute
        validates :pn_rip_redistribute, inclusion: {:in=>[:static, :connected, :ospf, :bgp], :message=>"%{value} needs to be :static, :connected, :ospf, :bgp"}, allow_nil: true

        # @return [:static, :connected, :bgp, :rip, nil] Specify how OSPF routes are redistributed.
        attribute :pn_ospf_redistribute
        validates :pn_ospf_redistribute, inclusion: {:in=>[:static, :connected, :bgp, :rip], :message=>"%{value} needs to be :static, :connected, :bgp, :rip"}, allow_nil: true

        # @return [Object, nil] Specify other OSPF options as a whitespaces separated string within single quotes ''.
        attribute :pn_ospf_options
      end
    end
  end
end
