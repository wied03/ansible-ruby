# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Elastic Kubernetes Service Clusters
      class Aws_eks_cluster < Base
        # @return [String] Name of EKS cluster
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Kubernetes version - defaults to latest
        attribute :version
        validates :version, type: String

        # @return [String, nil] ARN of IAM role used by the EKS cluster
        attribute :role_arn
        validates :role_arn, type: String

        # @return [Array<String>, String, nil] list of subnet IDs for the Kubernetes cluster
        attribute :subnets
        validates :subnets, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] list of security group names or IDs
        attribute :security_groups
        validates :security_groups, type: TypeGeneric.new(String)

        # @return [:absent, :present, nil] desired state of the EKS cluster
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Specifies whether the module waits until the cluster becomes active after creation. It takes "usually less than 10 minutes" per AWS documentation.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] The duration in seconds to wait for the cluster to become active. Defaults to 1200 seconds (20 minutes).
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
