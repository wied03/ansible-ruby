# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, Update or Destroy a Target_Proxy. See U(https://cloud.google.com/compute/docs/load-balancing/http/target-proxies) for an overview. More details on the Target_Proxy API can be found at U(https://cloud.google.com/compute/docs/reference/latest/targetHttpProxies#resource-representations).
      class Gcp_target_proxy < Base
        # @return [String] Name of the Target_Proxy.
        attribute :target_proxy_name
        validates :target_proxy_name, presence: true, type: String

        # @return [String] Type of Target_Proxy. HTTP, HTTPS or SSL. Only HTTP is currently supported.
        attribute :target_proxy_type
        validates :target_proxy_type, presence: true, type: String

        # @return [String, nil] Name of the Url Map.  Required if type is HTTP or HTTPS proxy.
        attribute :url_map_name
        validates :url_map_name, type: String
      end
    end
  end
end
