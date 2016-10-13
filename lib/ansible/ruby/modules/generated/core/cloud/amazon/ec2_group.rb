# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # maintains ec2 security groups. This module has a dependency on python-boto >= 2.5
      class Ec2_group < Base
        # @return [String] Name of the security group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Description of the security group.
        attribute :description
        validates :description, presence: true, type: String

        # @return [Integer, nil] ID of the VPC to create the group in.
        attribute :vpc_id
        validates :vpc_id, type: Integer

        # @return [Array<Hash>, Hash, nil] List of firewall inbound rules to enforce in this group (see example). If none are supplied, a default all-out rule is assumed. If an empty list is supplied, no inbound rules will be enabled.
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of firewall outbound rules to enforce in this group (see example). If none are supplied, a default all-out rule is assumed. If an empty list is supplied, no outbound rules will be enabled.
        attribute :rules_egress
        validates :rules_egress, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] Create or delete a security group
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Purge existing rules on security group that are not found in rules
        attribute :purge_rules
        validates :purge_rules, type: String

        # @return [String, nil] Purge existing rules_egress on security group that are not found in rules_egress
        attribute :purge_rules_egress
        validates :purge_rules_egress, type: String
      end
    end
  end
end
