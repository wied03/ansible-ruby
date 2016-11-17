# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or remove SSD caches on a NetApp E-Series storage array.
      class Netapp_e_flashcache < Base
        # @return [String] The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_username
        validates :api_username, presence: true, type: String

        # @return [String] The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_password
        validates :api_password, presence: true, type: String

        # @return [String] The url to the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_url
        validates :api_url, presence: true, type: String

        # @return [Boolean, nil] Should https certificates be validated?
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] The ID of the array to manage (as configured on the web services proxy).
        attribute :ssid
        validates :ssid, presence: true, type: String

        # @return [:present, :absent] Whether the specified SSD cache should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the SSD cache to manage
        attribute :name
        validates :name, presence: true, type: String

        # @return [:filesystem, :database, :media, nil] The type of workload to optimize the cache for.
        attribute :io_type
        validates :io_type, inclusion: {:in=>[:filesystem, :database, :media], :message=>"%{value} needs to be :filesystem, :database, :media"}, allow_nil: true

        # @return [Object, nil] The minimum number of disks to use for building the cache. The cache will be expanded if this number exceeds the number of disks already in place
        attribute :disk_count

        # @return [:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb, nil] The unit to be applied to size arguments
        attribute :size_unit
        validates :size_unit, inclusion: {:in=>[:bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb], :message=>"%{value} needs to be :bytes, :b, :kb, :mb, :gb, :tb, :pb, :eb, :zb, :yb"}, allow_nil: true

        # @return [Object, nil] The minimum size (in size_units) of the ssd cache. The cache will be expanded if this exceeds the current size of the cache.
        attribute :cache_size_min
      end
    end
  end
end
