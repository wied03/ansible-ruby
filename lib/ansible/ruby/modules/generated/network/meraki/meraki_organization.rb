# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for creation, management, and visibility into organizations within Meraki.
      class Meraki_organization < Base
        # @return [:present, :query, nil] Create or modify an organization.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :query], :message=>"%{value} needs to be :present, :query"}, allow_nil: true

        # @return [String, nil] Organization to clone to a new organization.
        attribute :clone
        validates :clone, type: String

        # @return [String, nil] Name of organization.,If C(clone) is specified, C(org_name) is the name of the new organization.
        attribute :org_name
        validates :org_name, type: String

        # @return [Integer, nil] ID of organization.
        attribute :org_id
        validates :org_id, type: Integer
      end
    end
  end
end
