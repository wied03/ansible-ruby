# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Route53_facts < Base
        # @return [:change, :checker_ip_range, :health_check, :hosted_zone, :record_sets, :reusable_delegation_set] specifies the query action to take
        attribute :query
        validates :query, presence: true, inclusion: {:in=>[:change, :checker_ip_range, :health_check, :hosted_zone, :record_sets, :reusable_delegation_set], :message=>"%{value} needs to be :change, :checker_ip_range, :health_check, :hosted_zone, :record_sets, :reusable_delegation_set"}

        # @return [Object] The ID of the change batch request. The value that you specify here is the value that ChangeResourceRecordSets returned in the Id element when you submitted the request.
        attribute :change_id

        # @return [String] The Hosted Zone ID of the DNS zone
        attribute :hosted_zone_id
        validates :hosted_zone_id, type: String

        # @return [Fixnum] Maximum number of items to return for various get/list requests
        attribute :max_items
        validates :max_items, type: Fixnum

        # @return [Object] Some requests such as list_command: hosted_zones will return a maximum number of entries - EG 100. If the number of entries exceeds this maximum another request can be sent using the NextMarker entry from the first response to get the next page of results
        attribute :next_marker

        # @return [String] The DNS Zone delegation set ID
        attribute :delegation_set_id
        validates :delegation_set_id, type: String

        # @return [Object] The first name in the lexicographic ordering of domain names that you want the list_command: record_sets to start listing from
        attribute :start_record_name

        # @return [:A, :CNAME, :MX, :AAAA, :TXT, :PTR, :SRV, :SPF, :NS, nil] The type of DNS record
        attribute :type
        validates :type, inclusion: {:in=>[:A, :CNAME, :MX, :AAAA, :TXT, :PTR, :SRV, :SPF, :NS], :message=>"%{value} needs to be :A, :CNAME, :MX, :AAAA, :TXT, :PTR, :SRV, :SPF, :NS"}, allow_nil: true

        # @return [Object] The first name in the lexicographic ordering of domain names that you want the list_command to start listing from
        attribute :dns_name

        # @return [Object] The ID/s of the specified resource/s
        attribute :resource_id

        # @return [String] The ID of the health check
        attribute :health_check_id
        validates :health_check_id, type: String

        # @return [:details, :list, :list_by_name, :count, :tags, nil] This is used in conjunction with query: hosted_zone. It allows for listing details, counts or tags of various hosted zone details.
        attribute :hosted_zone_method
        validates :hosted_zone_method, inclusion: {:in=>[:details, :list, :list_by_name, :count, :tags], :message=>"%{value} needs to be :details, :list, :list_by_name, :count, :tags"}, allow_nil: true

        # @return [:list, :details, :status, :failure_reason, :count, :tags, nil] This is used in conjunction with query: health_check. It allows for listing details, counts or tags of various health check details.
        attribute :health_check_method
        validates :health_check_method, inclusion: {:in=>[:list, :details, :status, :failure_reason, :count, :tags], :message=>"%{value} needs to be :list, :details, :status, :failure_reason, :count, :tags"}, allow_nil: true
      end
    end
  end
end
