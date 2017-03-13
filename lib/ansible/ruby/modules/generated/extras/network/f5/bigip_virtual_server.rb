# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM virtual servers via iControl SOAP API
      class Bigip_virtual_server < Base
        # @return [:present, :absent, :enabled, :disabled, nil] Virtual Server state,Absent, delete the VS if present,C(present) (and its synonym enabled), create if needed the VS and set state to enabled,C(disabled), create if needed the VS and set state to disabled
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] Partition
        attribute :partition
        validates :partition, type: String

        # @return [String] Virtual server name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Destination IP of the virtual server (only host is currently supported). Required when state=present and vs does not exist.
        attribute :destination
        validates :destination, presence: true, type: String

        # @return [Integer, nil] Port of the virtual server . Required when state=present and vs does not exist
        attribute :port
        validates :port, type: Integer

        # @return [Array<String>, String, nil] List of all Profiles (HTTP,ClientSSL,ServerSSL,etc) that must be used by the virtual server
        attribute :all_profiles
        validates :all_profiles, type: TypeGeneric.new(String)

        # @return [Object, nil] List of rules to be applied in priority order
        attribute :all_rules

        # @return [Array<String>, String, nil] List of vlans to be enabled. When a VLAN named C(ALL) is used, all VLANs will be allowed.
        attribute :enabled_vlans
        validates :enabled_vlans, type: TypeGeneric.new(String)

        # @return [String, nil] Default pool for the virtual server
        attribute :pool
        validates :pool, type: String

        # @return [String, nil] Source network address policy
        attribute :snat
        validates :snat, type: String

        # @return [Object, nil] Default Profile which manages the session persistence
        attribute :default_persistence_profile

        # @return [String, nil] Virtual server description
        attribute :description
        validates :description, type: String
      end
    end
  end
end
