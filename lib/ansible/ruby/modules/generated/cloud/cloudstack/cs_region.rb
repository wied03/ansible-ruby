# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, update and remove regions.
      class Cs_region < Base
        # @return [Object] ID of the region.,Must be an number (int).
        attribute :id
        validates :id, presence: true

        # @return [Object, nil] Name of the region.,Required if C(state=present)
        attribute :name

        # @return [Object, nil] Endpoint URL of the region.,Required if C(state=present)
        attribute :endpoint

        # @return [:present, :absent, nil] State of the region.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
