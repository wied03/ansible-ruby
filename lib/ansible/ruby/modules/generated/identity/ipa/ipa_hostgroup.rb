# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify and delete an IPA host-group using IPA API
      class Ipa_hostgroup < Base
        # @return [Object] Name of host-group.,Can not be changed as it is the unique identifier.
        attribute :cn
        validates :cn, presence: true

        # @return [Object, nil] Description
        attribute :description

        # @return [Array<String>, String, nil] List of hosts that belong to the host-group.,If an empty list is passed all hosts will be removed from the group.,If option is omitted hosts will not be checked or changed.,If option is passed all assigned hosts that are not passed will be unassigned from the group.
        attribute :host
        validates :host, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of host-groups than belong to that host-group.,If an empty list is passed all host-groups will be removed from the group.,If option is omitted host-groups will not be checked or changed.,If option is passed all assigned hostgroups that are not passed will be unassigned from the group.
        attribute :hostgroup
        validates :hostgroup, type: TypeGeneric.new(String)

        # @return [:present, :absent, :enabled, :disabled, nil] State to ensure.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
