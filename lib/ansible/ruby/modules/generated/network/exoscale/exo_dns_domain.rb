# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove domain records.
      class Exo_dns_domain < Base
        # @return [String] Name of the record.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] State of the resource.
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
