# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates AWS VPC endpoints.
      # Deletes AWS VPC endpoints.
      # This module support check mode.
      class Ec2_vpc_endpoint < Base
        # @return [String, nil] Required when creating a VPC endpoint.
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [String, nil] An AWS supported vpc endpoint service. Use the ec2_vpc_endpoint_facts module to describe the supported endpoint services.,Required when creating an endpoint.
        attribute :service
        validates :service, type: String

        # @return [String, nil] A properly formatted json policy as string, see U(https://github.com/ansible/ansible/issues/7005#issuecomment-42894813). Cannot be used with I(policy_file).,Option when creating an endpoint. If not provided AWS will utilise a default policy which provides full access to the service.
        attribute :policy
        validates :policy, type: String

        # @return [String, nil] The path to the properly json formatted policy file, see U(https://github.com/ansible/ansible/issues/7005#issuecomment-42894813) on how to use it properly. Cannot be used with I(policy).,Option when creating an endpoint. If not provided AWS will utilise a default policy which provides full access to the service.
        attribute :policy_file
        validates :policy_file, type: String

        # @return [:present, :absent, nil] present to ensure resource is created.,absent to remove resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Symbol, nil] When specified, will wait for either available status for state present. Unfortunately this is ignored for delete actions due to a difference in behaviour from AWS.
        attribute :wait
        validates :wait, type: Symbol

        # @return [Integer, nil] Used in conjunction with wait. Number of seconds to wait for status. Unfortunately this is ignored for delete actions due to a difference in behaviour from AWS.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Array<String>, String, nil] List of one or more route table ids to attach to the endpoint. A route is added to the route table with the destination of the endpoint if provided.
        attribute :route_table_ids
        validates :route_table_ids, type: TypeGeneric.new(String)

        # @return [Object, nil] One or more vpc endpoint ids to remove from the AWS account
        attribute :vpc_endpoint_id

        # @return [Object, nil] Optional client token to ensure idempotency
        attribute :client_token
      end
    end
  end
end
