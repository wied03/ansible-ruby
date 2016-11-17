# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or removes resource records in Google Cloud DNS.
      class Gcdns_record < Base
        # @return [:present, :absent, nil] Whether the given resource record should or should not be present.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The fully-qualified domain name of the resource record.
        attribute :record
        validates :record, presence: true, type: String

        # @return [String, nil] The DNS domain name of the zone (e.g., example.com).,One of either I(zone) or I(zone_id) must be specified as an option, or the module will fail.,If both I(zone) and I(zone_id) are specifed, I(zone_id) will be used.
        attribute :zone
        validates :zone, type: String

        # @return [String, nil] The Google Cloud ID of the zone (e.g., example-com).,One of either I(zone) or I(zone_id) must be specified as an option, or the module will fail.,These usually take the form of domain names with the dots replaced with dashes. A zone ID will never have any dots in it.,I(zone_id) can be faster than I(zone) in projects with a large number of zones.,If both I(zone) and I(zone_id) are specifed, I(zone_id) will be used.
        attribute :zone_id
        validates :zone_id, type: String

        # @return [:A, :AAAA, :CNAME, :SRV, :TXT, :SOA, :NS, :MX, :SPF, :PTR] The type of resource record to add.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:A, :AAAA, :CNAME, :SRV, :TXT, :SOA, :NS, :MX, :SPF, :PTR], :message=>"%{value} needs to be :A, :AAAA, :CNAME, :SRV, :TXT, :SOA, :NS, :MX, :SPF, :PTR"}

        # @return [Array<String>, String, nil] The record_data to use for the resource record.,I(record_data) must be specified if I(state) is C(present) or I(overwrite) is C(True), or the module will fail.,Valid record_data vary based on the record's I(type). In addition, resource records that contain a DNS domain name in the value field (e.g., CNAME, PTR, SRV, .etc) MUST include a trailing dot in the value.,Individual string record_data for TXT records must be enclosed in double quotes.,For resource records that have the same name but different record_data (e.g., multiple A records), they must be defined as multiple list entries in a single record.
        attribute :record_data
        validates :record_data, type: TypeGeneric.new(String)

        # @return [Integer, nil] The amount of time in seconds that a resource record will remain cached by a caching resolver.
        attribute :ttl
        validates :ttl, type: Integer

        # @return [Boolean, nil] Whether an attempt to overwrite an existing record should succeed or fail. The behavior of this option depends on I(state).,If I(state) is C(present) and I(overwrite) is C(True), this module will replace an existing resource record of the same name with the provided I(record_data). If I(state) is C(present) and I(overwrite) is C(False), this module will fail if there is an existing resource record with the same name and type, but different resource data.,If I(state) is C(absent) and I(overwrite) is C(True), this module will remove the given resource record unconditionally. If I(state) is C(absent) and I(overwrite) is C(False), this module will fail if the provided record_data do not match exactly with the existing resource record's record_data.
        attribute :overwrite
        validates :overwrite, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The e-mail address for a service account with access to Google Cloud DNS.
        attribute :service_account_email

        # @return [Object, nil] The path to the PEM file associated with the service account email.,This option is deprecated and may be removed in a future release. Use I(credentials_file) instead.
        attribute :pem_file

        # @return [Object, nil] The path to the JSON file associated with the service account email.
        attribute :credentials_file

        # @return [Object, nil] The Google Cloud Platform project ID to use.
        attribute :project_id
      end
    end
  end
end
