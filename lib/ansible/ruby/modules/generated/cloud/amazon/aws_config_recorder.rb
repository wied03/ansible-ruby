# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module manages AWS Config configuration recorder settings
      class Aws_config_recorder < Base
        # @return [String] The name of the AWS Config resource.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the Config rule should be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Amazon Resource Name (ARN) of the IAM role used to describe the AWS resources associated with the account.,Required when state=present
        attribute :role_arn
        validates :role_arn, type: String

        # @return [Hash, nil] Specifies the types of AWS resources for which AWS Config records configuration changes.,Required when state=present
        attribute :recording_group
        validates :recording_group, type: Hash
      end
    end
  end
end
