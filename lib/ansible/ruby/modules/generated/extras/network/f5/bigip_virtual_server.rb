# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bigip_virtual_server < Base
        # @return [String] BIG-IP host
        attribute :server
        validates :server, presence: true, type: String

        # @return [String] BIG-IP username
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] BIG-IP password
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Virtual Server state,Absent, delete the VS if present,present (and its synonym enabled), create if needed the VS and set state to enabled,disabled, create if needed the VS and set state to disabled
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [String] Partition
        attribute :partition
        validates :partition, type: String

        # @return [String] Virtual server name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Destination IP of the virtual server (only host is currently supported) . Required when state=present and vs does not exist.
        attribute :destination
        validates :destination, presence: true, type: String

        # @return [String] Port of the virtual server . Required when state=present and vs does not exist
        attribute :port
        validates :port, type: String

        # @return [String] List of all Profiles (HTTP,ClientSSL,ServerSSL,etc) that must be used by the virtual server
        attribute :all_profiles
        validates :all_profiles, type: String

        # @return [String] Default pool for the virtual server
        attribute :pool
        validates :pool, type: String

        # @return [String] Source network address policy
        attribute :snat
        validates :snat, type: String

        # @return [String] Default Profile which manages the session persistence
        attribute :default_persistence_profile
        validates :default_persistence_profile, type: String

        # @return [String] Virtual server description.
        attribute :description
        validates :description, type: String
      end
    end
  end
end