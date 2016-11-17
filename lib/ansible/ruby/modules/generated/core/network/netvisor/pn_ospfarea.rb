# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute vrouter-ospf-add, vrouter-ospf-remove command.
      # This command adds/removes Open Shortest Path First(OSPF) area to/from a virtual router(vRouter) service.
      class Pn_ospfarea < Base
        # @return [String] Login username.
        attribute :pn_cliusername
        validates :pn_cliusername, presence: true, type: String

        # @return [String] Login password.
        attribute :pn_clipassword
        validates :pn_clipassword, presence: true, type: String

        # @return [Object, nil] Target switch(es) to run the CLI on.
        attribute :pn_cliswitch

        # @return [:present, :absent, :update] State the action to perform. Use 'present' to add ospf-area, 'absent' to remove ospf-area and 'update' to modify ospf-area.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}

        # @return [String] Specify the name of the vRouter.
        attribute :pn_vrouter_name
        validates :pn_vrouter_name, presence: true, type: String

        # @return [String] Specify the OSPF area number.
        attribute :pn_ospf_area
        validates :pn_ospf_area, presence: true, type: String

        # @return [:none, :stub, :"stub-no-summary", :nssa, :"nssa-no-summary", nil] Specify the OSPF stub type.
        attribute :pn_stub_type
        validates :pn_stub_type, inclusion: {:in=>[:none, :stub, :"stub-no-summary", :nssa, :"nssa-no-summary"], :message=>"%{value} needs to be :none, :stub, :\"stub-no-summary\", :nssa, :\"nssa-no-summary\""}, allow_nil: true

        # @return [Object, nil] OSPF prefix list for filtering incoming packets.
        attribute :pn_prefix_listin

        # @return [Object, nil] OSPF prefix list for filtering outgoing packets.
        attribute :pn_prefix_listout

        # @return [Boolean, nil] Enable/disable system information.
        attribute :pn_quiet
        validates :pn_quiet, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
