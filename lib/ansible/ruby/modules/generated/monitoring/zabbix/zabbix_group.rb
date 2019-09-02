# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create host groups if they do not exist.
      # Delete existing host groups if they exist.
      class Zabbix_group < Base
        # @return [:present, :absent, nil] Create or delete host group.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String] List of host groups to create or delete.
        attribute :host_groups
        validates :host_groups, presence: true, type: TypeGeneric.new(String)
      end
    end
  end
end
