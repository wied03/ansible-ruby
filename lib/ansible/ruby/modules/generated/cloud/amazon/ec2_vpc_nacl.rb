# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Read the AWS documentation for Network ACLS U(http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)
      class Ec2_vpc_nacl < Base
        # @return [String, nil] Tagged name identifying a network ACL.,One and only one of the I(name) or I(nacl_id) is required.
        attribute :name
        validates :name, type: String

        # @return [String, nil] NACL id identifying a network ACL.,One and only one of the I(name) or I(nacl_id) is required.
        attribute :nacl_id
        validates :nacl_id, type: String

        # @return [String, nil] VPC id of the requesting VPC.,Required when state present.
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [Array<String>, String, nil] The list of subnets that should be associated with the network ACL.,Must be specified as a list,Each subnet can be specified as subnet ID, or its tagged name.
        attribute :subnets
        validates :subnets, type: TypeGeneric.new(String)

        # @return [Object, nil] A list of rules for outgoing traffic. Each rule must be specified as a list. Each rule may contain the rule number (integer 1-32766), protocol (one of ['tcp', 'udp', 'icmp', '-1', 'all']), the rule action ('allow' or 'deny') the CIDR of the IPv4 network range to allow or deny, the ICMP type (-1 means all types), the ICMP code (-1 means all codes), the last port in the range for TCP or UDP protocols, and the first port in the range for TCP or UDP protocols. See examples.
        attribute :egress

        # @return [Object, nil] List of rules for incoming traffic. Each rule must be specified as a list. Each rule may contain the rule number (integer 1-32766), protocol (one of ['tcp', 'udp', 'icmp', '-1', 'all']), the rule action ('allow' or 'deny') the CIDR of the IPv4 network range to allow or deny, the ICMP type (-1 means all types), the ICMP code (-1 means all codes), the last port in the range for TCP or UDP protocols, and the first port in the range for TCP or UDP protocols. See examples.
        attribute :ingress

        # @return [Hash, nil] Dictionary of tags to look for and apply when creating a network ACL.
        attribute :tags
        validates :tags, type: Hash

        # @return [:present, :absent, nil] Creates or modifies an existing NACL,Deletes a NACL and reassociates subnets to the default NACL
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
