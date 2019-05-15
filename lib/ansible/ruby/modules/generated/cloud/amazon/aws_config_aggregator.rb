# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module manages AWS Config resources
      class Aws_config_aggregator < Base
        # @return [String] The name of the AWS Config resource.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the Config rule should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Hash, nil] Provides a list of source accounts and regions to be aggregated.
        attribute :account_sources
        validates :account_sources, type: Hash

        # @return [Object, nil] The region authorized to collect aggregated data.
        attribute :organization_source
      end
    end
  end
end
