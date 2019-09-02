# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage an AWS Application Elastic Load Balancer. See U(https://aws.amazon.com/blogs/aws/new-aws-application-load-balancer/) for details.
      class Elb_application_lb < Base
        # @return [Symbol, nil] Whether or not to enable access logs. When true, I(access_logs_s3_bucket) must be set.
        attribute :access_logs_enabled
        validates :access_logs_enabled, type: Symbol

        # @return [String, nil] The name of the S3 bucket for the access logs. This attribute is required if access logs in Amazon S3 are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permission to write to the bucket.
        attribute :access_logs_s3_bucket
        validates :access_logs_s3_bucket, type: String

        # @return [String, nil] The prefix for the location in the S3 bucket. If you don't specify a prefix, the access logs are stored in the root of the bucket.
        attribute :access_logs_s3_prefix
        validates :access_logs_s3_prefix, type: String

        # @return [Symbol, nil] Indicates whether deletion protection for the ELB is enabled.
        attribute :deletion_protection
        validates :deletion_protection, type: Symbol

        # @return [Symbol, nil] Indicates whether to enable HTTP2 routing.
        attribute :http2
        validates :http2, type: Symbol

        # @return [Integer, nil] The number of seconds to wait before an idle connection is closed.
        attribute :idle_timeout
        validates :idle_timeout, type: Integer

        # @return [Array<Hash>, Hash, nil] A list of dicts containing listeners to attach to the ELB. See examples for detail of the dict required. Note that listener keys are CamelCased.
        attribute :listeners
        validates :listeners, type: TypeGeneric.new(Hash)

        # @return [String] The name of the load balancer. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Boolean, nil] If yes, existing listeners will be purged from the ELB to match exactly what is defined by I(listeners) parameter. If the I(listeners) parameter is not set then listeners will not be modified
        attribute :purge_listeners
        validates :purge_listeners, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.
        attribute :purge_tags
        validates :purge_tags, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] A list of the IDs of the subnets to attach to the load balancer. You can specify only one subnet per Availability Zone. You must specify subnets from at least two Availability Zones. Required if state=present.
        attribute :subnets
        validates :subnets, type: TypeGeneric.new(String)

        # @return [Object, nil] A list of the names or IDs of the security groups to assign to the load balancer. Required if state=present.
        attribute :security_groups

        # @return [:"internet-facing", :internal, nil] Internet-facing or internal load balancer. An ELB scheme can not be modified after creation.
        attribute :scheme
        validates :scheme, expression_inclusion: {:in=>[:"internet-facing", :internal], :message=>"%{value} needs to be :\"internet-facing\", :internal"}, allow_nil: true

        # @return [:present, :absent, nil] Create or destroy the load balancer.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] A dictionary of one or more tags to assign to the load balancer.
        attribute :tags

        # @return [Symbol, nil] Wait for the load balancer to have a state of 'active' before completing. A status check is performed every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
        attribute :wait
        validates :wait, type: Symbol

        # @return [Object, nil] The time in seconds to use in conjunction with I(wait).
        attribute :wait_timeout

        # @return [Boolean, nil] When set to no, keep the existing load balancer rules in place. Will modify and add, but will not delete.
        attribute :purge_rules
        validates :purge_rules, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
