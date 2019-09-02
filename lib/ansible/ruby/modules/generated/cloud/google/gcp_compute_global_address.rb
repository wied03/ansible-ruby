# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a Global Address resource. Global addresses are used for HTTP(S) load balancing.
      class Gcp_compute_global_address < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource.,Provide this property when you create the resource.
        attribute :description

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.  Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:IPV4, :IPV6, nil] The IP Version that will be used by this address. Valid options are IPV4 or IPV6. The default value is IPV4.
        attribute :ip_version
        validates :ip_version, expression_inclusion: {:in=>[:IPV4, :IPV6], :message=>"%{value} needs to be :IPV4, :IPV6"}, allow_nil: true
      end
    end
  end
end
