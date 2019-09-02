# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for creation, management, and visibility into administrators within Meraki.
      class Meraki_admin < Base
        # @return [String, nil] Name of the dashboard administrator.,Required when creating a new administrator.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Email address for the dashboard administrator.,Email cannot be updated.,Required when creating or editing an administrator.
        attribute :email
        validates :email, type: String

        # @return [:full, :none, :"read-only", nil] Privileges assigned to the administrator in the organization.
        attribute :orgAccess
        validates :orgAccess, expression_inclusion: {:in=>[:full, :none, :"read-only"], :message=>"%{value} needs to be :full, :none, :\"read-only\""}, allow_nil: true

        # @return [Object, nil] Tags the administrator has privileges on.,When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.,If C(none) is specified, C(network) or C(tags) must be specified.
        attribute :tags

        # @return [Object, nil] List of networks the administrator has privileges on.,When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.
        attribute :networks

        # @return [:absent, :present, :query] Create or modify an organization
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}

        # @return [String, nil] Name of organization.,Used when C(name) should refer to another object.,When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.
        attribute :org_name
        validates :org_name, type: String

        # @return [Integer, nil] ID of organization.
        attribute :org_id
        validates :org_id, type: Integer
      end
    end
  end
end
