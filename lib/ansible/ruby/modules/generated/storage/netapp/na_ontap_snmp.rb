# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/Delete SNMP community
      class Na_ontap_snmp < Base
        # @return [String] Access control for the community. The only supported value is 'ro' (read-only)
        attribute :access_control
        validates :access_control, presence: true, type: String

        # @return [String] The name of the SNMP community to manage.
        attribute :community_name
        validates :community_name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the specified SNMP community should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
