# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages configuration of an OSPF instance on HUAWEI CloudEngine switches.
      class Ce_ospf < Base
        # @return [Object] Specifies a process ID. The value is an integer ranging from 1 to 4294967295.
        attribute :process_id
        validates :process_id, presence: true

        # @return [Object, nil] Specifies the area ID. The area with the area-id being 0 is a backbone area. Valid values are a string, formatted as an IP address (i.e. "0.0.0.0") or as an integer between 1 and 4294967295.
        attribute :area

        # @return [Object, nil] Specifies the address of the network segment where the interface resides. The value is in dotted decimal notation.
        attribute :addr

        # @return [Object, nil] IP network wildcard bits in decimal format between 0 and 32.
        attribute :mask

        # @return [:none, :"hmac-sha256", :md5, :"hmac-md5", :simple, nil] Specifies the authentication type.
        attribute :auth_mode
        validates :auth_mode, inclusion: {:in=>[:none, :"hmac-sha256", :md5, :"hmac-md5", :simple], :message=>"%{value} needs to be :none, :\"hmac-sha256\", :md5, :\"hmac-md5\", :simple"}, allow_nil: true

        # @return [Object, nil] Specifies a password for simple authentication. The value is a string of 1 to 8 characters.
        attribute :auth_text_simple

        # @return [Object, nil] Authentication key id when C(auth_mode) is 'hmac-sha256', 'md5' or 'hmac-md5. Valid value is an integer is in the range from 1 to 255.
        attribute :auth_key_id

        # @return [Object, nil] Specifies a password for MD5, HMAC-MD5, or HMAC-SHA256 authentication. The value is a string of 1 to 255 case-sensitive characters, spaces not supported.
        attribute :auth_text_md5

        # @return [Object, nil] IPv4 address for configure next-hop address's weight. Valid values are a string, formatted as an IP address.
        attribute :nexthop_addr

        # @return [Object, nil] Indicates the weight of the next hop. The smaller the value is, the higher the preference of the route is. It is an integer that ranges from 1 to 254.
        attribute :nexthop_weight

        # @return [Object, nil] The maximum number of paths for forward packets over multiple paths. Valid value is an integer in the range from 1 to 64.
        attribute :max_load_balance

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
