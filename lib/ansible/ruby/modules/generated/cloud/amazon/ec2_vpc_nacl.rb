# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Read the AWS documentation for Network ACLS U(http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)
      class Ec2_vpc_nacl < Base
        # @return [String] Tagged name identifying a network ACL.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] VPC id of the requesting VPC.
        attribute :vpc_id
        validates :vpc_id, presence: true, type: String

        # @return [Array<String>, String, nil] The list of subnets that should be associated with the network ACL.,Must be specified as a list,Each subnet can be specified as subnet ID, or its tagged name.
        attribute :subnets
        validates :subnets, type: TypeGeneric.new(String)

        # @return [Array<Array>, Array, nil] A list of rules for outgoing traffic.,Each rule must be specified as a list.
        attribute :egress
        validates :egress, type: TypeGeneric.new(Array)

        # @return [Array<Array>, Array, nil] List of rules for incoming traffic.,Each rule must be specified as a list.
        attribute :ingress
        validates :ingress, type: TypeGeneric.new(Array)

        # @return [Hash, nil] Dictionary of tags to look for and apply when creating a network ACL.
        attribute :tags
        validates :tags, type: Hash

        # @return [:present, :absent, nil] Creates or modifies an existing NACL,Deletes a NACL and reassociates subnets to the default NACL
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
