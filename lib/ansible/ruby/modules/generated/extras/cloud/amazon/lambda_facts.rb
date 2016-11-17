# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gathers various details related to Lambda functions, including aliases, versions and event source mappings. Use module M(lambda) to manage the lambda function itself, M(lambda_alias) to manage function aliases and M(lambda_event) to manage lambda event source mappings.
      class Lambda_facts < Base
        # @return [:aliases, :all, :config, :mappings, :policy, :versions] Specifies the resource type for which to gather facts.  Leave blank to retrieve all facts.
        attribute :query
        validates :query, presence: true, inclusion: {:in=>[:aliases, :all, :config, :mappings, :policy, :versions], :message=>"%{value} needs to be :aliases, :all, :config, :mappings, :policy, :versions"}

        # @return [String, nil] The name of the lambda function for which facts are requested.
        attribute :function_name
        validates :function_name, type: String

        # @return [Object, nil] For query type 'mappings', this is the Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB stream.
        attribute :event_source_arn
      end
    end
  end
end
