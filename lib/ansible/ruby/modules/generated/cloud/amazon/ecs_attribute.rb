# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete ECS container instance attributes.
      class Ecs_attribute < Base
        # @return [String] The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply attributes.
        attribute :cluster
        validates :cluster, presence: true, type: String

        # @return [:present, :absent, nil] The desired state of the attributes.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<Hash>, Hash] List of attributes.
        attribute :attributes
        validates :attributes, presence: true, type: TypeGeneric.new(Hash)

        # @return [String] EC2 instance ID of ECS cluster container instance.
        attribute :ec2_instance_id
        validates :ec2_instance_id, presence: true, type: String
      end
    end
  end
end
