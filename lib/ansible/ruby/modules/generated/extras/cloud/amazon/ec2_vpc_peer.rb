# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Read the AWS documentation for VPC Peering Connections U(http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-peering.html)
      class Ec2_vpc_peer < Base
        # @return [String, nil] VPC id of the requesting VPC.
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [String, nil] Peering connection id.
        attribute :peering_id
        validates :peering_id, type: String

        # @return [String, nil] VPC id of the accepting VPC.
        attribute :peer_vpc_id
        validates :peer_vpc_id, type: String

        # @return [Integer, nil] The AWS account number for cross account peering.
        attribute :peer_owner_id
        validates :peer_owner_id, type: Integer

        # @return [Hash, nil] Dictionary of tags to look for and apply when creating a Peering Connection.
        attribute :tags
        validates :tags, type: Hash

        # @return [:present, :absent, :accept, :reject, nil] Create, delete, accept, reject a peering connection.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :accept, :reject], :message=>"%{value} needs to be :present, :absent, :accept, :reject"}, allow_nil: true
      end
    end
  end
end
