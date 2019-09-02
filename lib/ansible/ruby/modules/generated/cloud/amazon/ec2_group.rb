# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # maintains ec2 security groups. This module has a dependency on python-boto >= 2.5
      class Ec2_group < Base
        # @return [String, nil] Name of the security group.,One of and only one of I(name) or I(group_id) is required.,Required if I(state=present).
        attribute :name
        validates :name, type: String

        # @return [String, nil] Id of group to delete (works only with absent).,One of and only one of I(name) or I(group_id) is required.
        attribute :group_id
        validates :group_id, type: String

        # @return [String, nil] Description of the security group. Required when C(state) is C(present).
        attribute :description
        validates :description, type: String

        # @return [String, Integer, nil] ID of the VPC to create the group in.
        attribute :vpc_id
        validates :vpc_id, type: MultipleTypes.new(String, Integer)

        # @return [Array<Hash>, Hash, nil] List of firewall inbound rules to enforce in this group (see example). If none are supplied, no inbound rules will be enabled. Rules list may include its own name in `group_name`. This allows idempotent loopback additions (e.g. allow group to access itself). Rule sources list support was added in version 2.4. This allows to define multiple sources per source type as well as multiple source types per rule. Prior to 2.4 an individual source is allowed. In version 2.5 support for rule descriptions was added.
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] List of firewall outbound rules to enforce in this group (see example). If none are supplied, a default all-out rule is assumed. If an empty list is supplied, no outbound rules will be enabled. Rule Egress sources list support was added in version 2.4. In version 2.5 support for rule descriptions was added.
        attribute :rules_egress
        validates :rules_egress, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] Create or delete a security group
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Purge existing rules on security group that are not found in rules
        attribute :purge_rules
        validates :purge_rules, type: String

        # @return [String, nil] Purge existing rules_egress on security group that are not found in rules_egress
        attribute :purge_rules_egress
        validates :purge_rules_egress, type: String

        # @return [Object, nil] A dictionary of one or more tags to assign to the security group.
        attribute :tags

        # @return [Boolean, nil] If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.
        attribute :purge_tags
        validates :purge_tags, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
