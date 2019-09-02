# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage cache snapshots in Amazon Elasticache.
      # Returns information about the specified snapshot.
      class Elasticache_snapshot < Base
        # @return [String] The name of the snapshot we want to create, copy, delete
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :copy, nil] Actions that will create, destroy, or copy a snapshot.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :copy], :message=>"%{value} needs to be :present, :absent, :copy"}, allow_nil: true

        # @return [Object, nil] The name of the existing replication group to make the snapshot.
        attribute :replication_id

        # @return [Object, nil] The name of an existing cache cluster in the replication group to make the snapshot.
        attribute :cluster_id

        # @return [Object, nil] The name of a snapshot copy
        attribute :target

        # @return [Object, nil] The s3 bucket to which the snapshot is exported
        attribute :bucket
      end
    end
  end
end
