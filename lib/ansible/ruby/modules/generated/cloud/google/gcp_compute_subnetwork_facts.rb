# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts for GCP Subnetwork
      class Gcp_compute_subnetwork_facts < Base
        # @return [Array<String>, String, nil] A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters). Each additional filter in the list will act be added as an AND condition (filter1 and filter2)
        attribute :filters
        validates :filters, type: TypeGeneric.new(String)

        # @return [String] URL of the GCP region for this subnetwork.
        attribute :region
        validates :region, presence: true, type: String
      end
    end
  end
end
