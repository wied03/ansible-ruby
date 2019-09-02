# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents an Address resource.
      # Each virtual machine instance has an ephemeral internal IP address and, optionally, an external IP address. To communicate between instances on the same network, you can use an instance's internal IP address. To communicate with the Internet and instances outside of the same network, you must specify the instance's external IP address.
      # Internal IP addresses are ephemeral and only belong to an instance for the lifetime of the instance; if the instance is deleted and recreated, the instance is assigned a new internal IP address, either by Compute Engine or by you. External IP addresses can be either ephemeral or static.
      class Gcp_compute_address < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] The static external IP address represented by this resource. Only IPv4 is supported. An address may only be specified for INTERNAL address types. The IP address must be inside the specified subnetwork, if any.
        attribute :address

        # @return [:INTERNAL, :EXTERNAL, nil] The type of address to reserve, either INTERNAL or EXTERNAL.,If unspecified, defaults to EXTERNAL.
        attribute :address_type
        validates :address_type, expression_inclusion: {:in=>[:INTERNAL, :EXTERNAL], :message=>"%{value} needs to be :INTERNAL, :EXTERNAL"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource.
        attribute :description

        # @return [String] Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range.,This field can only be used with INTERNAL type with GCE_ENDPOINT/DNS_RESOLVER purposes.
        attribute :subnetwork

        # @return [String] URL of the region where the regional address resides.,This field is not applicable to global addresses.
        attribute :region
        validates :region, presence: true, type: String
      end
    end
  end
end
