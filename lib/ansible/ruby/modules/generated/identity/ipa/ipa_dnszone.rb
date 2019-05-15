# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add and delete an IPA DNS Zones using IPA API
      class Ipa_dnszone < Base
        # @return [String] The DNS zone name to which needs to be managed.
        attribute :zone_name
        validates :zone_name, presence: true, type: String

        # @return [:present, :absent, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
