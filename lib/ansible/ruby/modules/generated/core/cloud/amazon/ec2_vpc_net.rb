# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_vpc_net < Base
        # @return [String] The name to give your VPC. This is used in combination with the cidr_block paramater to determine if a VPC already exists.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The CIDR of the VPC
        attribute :cidr_block
        validates :cidr_block, presence: true, type: String

        # @return [:default, :dedicated, nil] Whether to be default or dedicated tenancy. This cannot be changed after the VPC has been created.
        attribute :tenancy
        validates :tenancy, inclusion: {:in=>[:default, :dedicated], :message=>"%{value} needs to be :default, :dedicated"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to enable AWS DNS support.
        attribute :dns_support
        validates :dns_support, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to enable AWS hostname support.
        attribute :dns_hostnames
        validates :dns_hostnames, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] the id of the DHCP options to use for this vpc
        attribute :dhcp_opts_id

        # @return [String] The tags you want attached to the VPC. This is independent of the name value, note if you pass a 'Name' key it would override the Name of the VPC if it's different.
        attribute :tags
        validates :tags, type: String

        # @return [:present, :absent, nil] The state of the VPC. Either absent or present.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] By default the module will not create another VPC if there is another VPC with the same name and CIDR block. Specify this as true if you want duplicate VPCs created.
        attribute :multi_ok
      end
    end
  end
end
