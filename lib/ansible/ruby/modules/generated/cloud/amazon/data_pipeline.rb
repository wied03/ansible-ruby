# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and manage AWS Datapipelines. Creation is not idempotent in AWS, so the I(uniqueId) is created by hashing the options (minus objects) given to the datapipeline.
      # The pipeline definition must be in the format given here U(http://docs.aws.amazon.com/datapipeline/latest/APIReference/API_PutPipelineDefinition.html#API_PutPipelineDefinition_RequestSyntax).
      # Also operations will wait for a configurable amount of time to ensure the pipeline is in the requested state.
      class Data_pipeline < Base
        # @return [String] The name of the Datapipeline to create/modify/delete.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] An optional description for the pipeline being created.
        attribute :description
        validates :description, type: String

        # @return [String, nil] A list of pipeline object definitions, each of which is a dict that takes the keys C(id), C(name) and C(fields).
        attribute :objects
        validates :objects, type: String

        # @return [String, nil] A list of parameter objects (dicts) in the pipeline definition.
        attribute :parameters
        validates :parameters, type: String

        # @return [String, nil] A list of parameter values (dicts) in the pipeline definition. Each dict takes the keys C(id) and C(stringValue) both of which are strings.
        attribute :values
        validates :values, type: String

        # @return [Integer, nil] Time in seconds to wait for the pipeline to transition to the requested state, fail otherwise.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:present, :absent, :active, :inactive, nil] The requested state of the pipeline.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :active, :inactive], :message=>"%{value} needs to be :present, :absent, :active, :inactive"}, allow_nil: true

        # @return [Hash, nil] A dict of key:value pair(s) to add to the pipeline.
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end
