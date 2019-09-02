# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a VPN gateway running in GCP. This virtual device is managed by Google, but used only by you.
      class Gcp_compute_target_vpn_gateway < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource.
        attribute :description

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.  Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The network this VPN gateway is accepting traffic for.
        attribute :network
        validates :network, presence: true, type: String

        # @return [String] The region this gateway should sit in.
        attribute :region
        validates :region, presence: true, type: String
      end
    end
  end
end
