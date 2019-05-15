# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module manages AWS Config resources
      class Aws_config_aggregation_authorization < Base
        # @return [:present, :absent, nil] Whether the Config rule should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The 12-digit account ID of the account authorized to aggregate data.
        attribute :authorized_account_id
        validates :authorized_account_id, type: String

        # @return [Object, nil] The region authorized to collect aggregated data.
        attribute :authorized_aws_region
      end
    end
  end
end
