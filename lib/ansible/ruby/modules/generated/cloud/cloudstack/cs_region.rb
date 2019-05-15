# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, update and remove regions.
      class Cs_region < Base
        # @return [Integer] ID of the region.,Must be an number (int).
        attribute :id
        validates :id, presence: true, type: Integer

        # @return [String, nil] Name of the region.,Required if C(state=present)
        attribute :name
        validates :name, type: String

        # @return [String, nil] Endpoint URL of the region.,Required if C(state=present)
        attribute :endpoint
        validates :endpoint, type: String

        # @return [:present, :absent, nil] State of the region.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
