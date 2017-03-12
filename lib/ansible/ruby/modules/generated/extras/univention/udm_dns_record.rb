# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows to manage dns records on a univention corporate server (UCS). It uses the python API of the UCS to create a new object or edit it.
      class Udm_dns_record < Base
        # @return [:present, :absent, nil] Whether the dns record is present or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the record, this is also the DNS record. E.g. www for www.example.com.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Corresponding DNS zone for this record, e.g. example.com.
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [:host_record, :alias, :ptr_record, :srv_record, :txt_record] Define the record type. C(host_record) is a A or AAAA record, C(alias) is a CNAME, C(ptr_record) is a PTR record, C(srv_record) is a SRV record and C(txt_record) is a TXT record.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:host_record, :alias, :ptr_record, :srv_record, :txt_record], :message=>"%{value} needs to be :host_record, :alias, :ptr_record, :srv_record, :txt_record"}

        # @return [Object, nil] Additional data for this record, e.g. ['a': '192.0.2.1']. Required if C(state=present).
        attribute :data
      end
    end
  end
end
