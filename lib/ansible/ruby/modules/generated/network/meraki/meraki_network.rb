# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for creation, management, and visibility into networks within Meraki.
      class Meraki_network < Base
        # @return [String, nil] Authentication key provided by the dashboard. Required if environmental variable MERAKI_KEY is not set.
        attribute :auth_key
        validates :auth_key, type: String

        # @return [:absent, :present, :query, nil] Create or modify an organization.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [String, nil] Name of a network.
        attribute :net_name
        validates :net_name, type: String

        # @return [Object, nil] ID number of a network.
        attribute :net_id

        # @return [String, nil] Name of organization associated to a network.
        attribute :org_name
        validates :org_name, type: String

        # @return [Object, nil] ID of organization associated to a network.
        attribute :org_id

        # @return [:appliance, :combined, :switch, :wireless, nil] Type of network device network manages.,Required when creating a network.
        attribute :type
        validates :type, inclusion: {:in=>[:appliance, :combined, :switch, :wireless], :message=>"%{value} needs to be :appliance, :combined, :switch, :wireless"}, allow_nil: true

        # @return [Array<String>, String, nil] Comma delimited list of tags to assign to network.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)

        # @return [String, nil] Timezone associated to network.,See U(https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) for a list of valid timezones.
        attribute :timezone
        validates :timezone, type: String

        # @return [Object, nil] - Disables the local device status pages (U[my.meraki.com](my.meraki.com), U[ap.meraki.com](ap.meraki.com), U[switch.meraki.com](switch.meraki.com), U[wired.meraki.com](wired.meraki.com))\r\n
        attribute :disable_my_meraki
      end
    end
  end
end
