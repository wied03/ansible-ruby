# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage an AWS Glue connection. See U(https://aws.amazon.com/glue/) for details.
      class Aws_glue_connection < Base
        # @return [Object, nil] The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
        attribute :catalog_id

        # @return [Hash] A dict of key-value pairs used as parameters for this connection.
        attribute :connection_properties
        validates :connection_properties, presence: true, type: Hash

        # @return [:JDBC, :SFTP, nil] The type of the connection. Currently, only JDBC is supported; SFTP is not supported.
        attribute :connection_type
        validates :connection_type, inclusion: {:in=>[:JDBC, :SFTP], :message=>"%{value} needs to be :JDBC, :SFTP"}, allow_nil: true

        # @return [Object, nil] The description of the connection.
        attribute :description

        # @return [Object, nil] A list of UTF-8 strings that specify the criteria that you can use in selecting this connection.
        attribute :match_criteria

        # @return [String] The name of the connection.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A list of security groups to be used by the connection. Use either security group name or ID.
        attribute :security_groups

        # @return [:present, :absent] Create or delete the AWS Glue connection.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] The subnet ID used by the connection.
        attribute :subnet_id
      end
    end
  end
end
