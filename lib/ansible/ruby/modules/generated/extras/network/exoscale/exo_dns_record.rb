# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete records.
      class Exo_dns_record < Base
        # @return [String, nil] Name of the record.
        attribute :name
        validates :name, type: String

        # @return [String] Domain the record is related to.
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [:A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL, nil] Type of the record.
        attribute :record_type
        validates :record_type, inclusion: {:in=>[:A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL], :message=>"%{value} needs to be :A, :ALIAS, :CNAME, :MX, :SPF, :URL, :TXT, :NS, :SRV, :NAPTR, :PTR, :AAAA, :SSHFP, :HINFO, :POOL"}, allow_nil: true

        # @return [String, nil] Content of the record.,Required if C(state=present) or C(name="")
        attribute :content
        validates :content, type: String

        # @return [Integer, nil] TTL of the record in seconds.
        attribute :ttl
        validates :ttl, type: Integer

        # @return [Integer, nil] Priority of the record.
        attribute :prio
        validates :prio, type: Integer

        # @return [Boolean, nil] Whether there are more than one records with similar C(name).,Only allowed with C(record_type=A).,C(content) will not be updated as it is used as key to find the record.
        attribute :multiple
        validates :multiple, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the record.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] API key of the Exoscale DNS API.
        attribute :api_key

        # @return [Object, nil] Secret key of the Exoscale DNS API.
        attribute :api_secret

        # @return [Integer, nil] HTTP timeout to Exoscale DNS API.
        attribute :api_timeout
        validates :api_timeout, type: Integer

        # @return [String, nil] Name of the ini section in the C(cloustack.ini) file.
        attribute :api_region
        validates :api_region, type: String

        # @return [Boolean, nil] Validate SSL certs of the Exoscale DNS API.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
