# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Uses boto3 to set TTL.
      # requires botocore version 1.5.24 or higher.
      class Dynamodb_ttl < Base
        # @return [:enable, :disable, nil] state to set DynamoDB table to
        attribute :state
        validates :state, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [String] name of the DynamoDB table to work on
        attribute :table_name
        validates :table_name, presence: true, type: String

        # @return [String] the name of the Time to Live attribute used to store the expiration time for items in the table,this appears to be required by the API even when disabling TTL.
        attribute :attribute_name
        validates :attribute_name, presence: true, type: String
      end
    end
  end
end
