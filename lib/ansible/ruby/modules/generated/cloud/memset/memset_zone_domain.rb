# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage DNS zone domains in a Memset account.
      class Memset_zone_domain < Base
        # @return [:absent, :present, nil] Indicates desired state of resource.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] The API key obtained from the Memset control panel.
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] The zone domain name. Ensure this value has at most 250 characters.
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [String] The zone to add the domain to (this must already exist).
        attribute :zone
        validates :zone, presence: true, type: String
      end
    end
  end
end
