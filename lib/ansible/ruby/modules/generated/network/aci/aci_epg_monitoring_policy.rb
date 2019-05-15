# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage monitoring policies on Cisco ACI fabrics.
      class Aci_epg_monitoring_policy < Base
        # @return [String] The name of the monitoring policy.
        attribute :monitoring_policy
        validates :monitoring_policy, presence: true, type: String

        # @return [String, nil] Description for the monitoring policy.
        attribute :description
        validates :description, type: String

        # @return [String] The name of the tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
