# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage top level Application Profile (AP) objects on Cisco ACI fabrics
      class Aci_ap < Base
        # @return [String] The name of an existing tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String

        # @return [String] The name of the application network profile.
        attribute :ap
        validates :ap, presence: true, type: String

        # @return [String, nil] Description for the AP.
        attribute :description
        validates :description, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
