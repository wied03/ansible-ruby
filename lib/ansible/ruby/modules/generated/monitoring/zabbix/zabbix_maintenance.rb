# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will let you create Zabbix maintenance windows.
      class Zabbix_maintenance < Base
        # @return [:present, :absent, nil] Create or remove a maintenance window. Maintenance window to remove is identified by name.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] Hosts to manage maintenance window for. Separate multiple hosts with commas. C(host_name) is an alias for C(host_names). B(Required) option when C(state) is I(present) and no C(host_groups) specified.
        attribute :host_names
        validates :host_names, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Host groups to manage maintenance window for. Separate multiple groups with commas. C(host_group) is an alias for C(host_groups). B(Required) option when C(state) is I(present) and no C(host_names) specified.
        attribute :host_groups
        validates :host_groups, type: TypeGeneric.new(String)

        # @return [Integer, nil] Length of maintenance window in minutes.
        attribute :minutes
        validates :minutes, type: Integer

        # @return [String] Unique name of maintenance window.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Short description of maintenance window.
        attribute :desc
        validates :desc, presence: true, type: String

        # @return [String, nil] Type of maintenance. With data collection, or without.
        attribute :collect_data
        validates :collect_data, type: String
      end
    end
  end
end
