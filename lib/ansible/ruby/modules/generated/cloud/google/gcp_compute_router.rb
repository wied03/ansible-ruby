# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a Router resource.
      class Gcp_compute_router < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] An optional description of this resource.
        attribute :description

        # @return [String] A reference to the network to which this router belongs.
        attribute :network
        validates :network, presence: true, type: String

        # @return [Hash, nil] BGP information specific to this router.
        attribute :bgp
        validates :bgp, type: Hash

        # @return [String] Region where the router resides.
        attribute :region
        validates :region, presence: true, type: String
      end
    end
  end
end
