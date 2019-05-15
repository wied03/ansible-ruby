# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, deletes, and updates DNS records sets and records within an existing Azure DNS Zone.
      class Azure_rm_dnsrecordset < Base
        # @return [String] name of resource group
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] name of the existing DNS zone in which to manage the record set
        attribute :zone_name
        validates :zone_name, presence: true, type: String

        # @return [String] relative name of the record set
        attribute :relative_name
        validates :relative_name, presence: true, type: String

        # @return [:A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT, :PTR] the type of record set to create or delete
        attribute :record_type
        validates :record_type, presence: true, inclusion: {:in=>[:A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT, :PTR], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :MX, :NS, :SRV, :TXT, :PTR"}

        # @return [:append, :purge, nil] whether existing record values not sent to the module should be purged
        attribute :record_mode
        validates :record_mode, inclusion: {:in=>[:append, :purge], :message=>"%{value} needs to be :append, :purge"}, allow_nil: true

        # @return [:absent, :present, nil] Assert the state of the record set. Use C(present) to create or update and C(absent) to delete.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Integer, nil] time to live of the record set in seconds
        attribute :time_to_live
        validates :time_to_live, type: Integer

        # @return [String, Array<Hash>, Hash, nil] list of records to be created depending on the type of record (set)
        attribute :records
        validates :records, type: TypeGeneric.new(Hash)
      end
    end
  end
end
