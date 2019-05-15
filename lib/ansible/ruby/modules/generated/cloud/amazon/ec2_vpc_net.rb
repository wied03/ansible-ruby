# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, modify, and terminate AWS virtual private clouds.
      class Ec2_vpc_net < Base
        # @return [String] The name to give your VPC. This is used in combination with C(cidr_block) to determine if a VPC already exists.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The primary CIDR of the VPC. After 2.5 a list of CIDRs can be provided. The first in the list will be used as the primary CIDR and is used in conjunction with the C(name) to ensure idempotence.
        attribute :cidr_block
        validates :cidr_block, presence: true, type: String

        # @return [Boolean, nil] Remove CIDRs that are associated with the VPC and are not specified in C(cidr_block).
        attribute :purge_cidrs
        validates :purge_cidrs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:default, :dedicated, nil] Whether to be default or dedicated tenancy. This cannot be changed after the VPC has been created.
        attribute :tenancy
        validates :tenancy, inclusion: {:in=>[:default, :dedicated], :message=>"%{value} needs to be :default, :dedicated"}, allow_nil: true

        # @return [Boolean, nil] Whether to enable AWS DNS support.
        attribute :dns_support
        validates :dns_support, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether to enable AWS hostname support.
        attribute :dns_hostnames
        validates :dns_hostnames, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] the id of the DHCP options to use for this vpc
        attribute :dhcp_opts_id

        # @return [Hash, nil] The tags you want attached to the VPC. This is independent of the name value, note if you pass a 'Name' key it would override the Name of the VPC if it's different.
        attribute :tags
        validates :tags, type: Hash

        # @return [:present, :absent, nil] The state of the VPC. Either absent or present.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] By default the module will not create another VPC if there is another VPC with the same name and CIDR block. Specify this as true if you want duplicate VPCs created.
        attribute :multi_ok
        validates :multi_ok, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
