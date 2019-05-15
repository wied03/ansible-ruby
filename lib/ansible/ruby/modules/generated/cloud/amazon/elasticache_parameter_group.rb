# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage cache security groups in Amazon Elasticache.
      # Returns information about the specified cache cluster.
      class Elasticache_parameter_group < Base
        # @return [:"memcached1.4", :"redis2.6", :"redis2.8", :"redis3.2", :"redis4.0", nil] The name of the cache parameter group family that the cache parameter group can be used with. Required when creating a cache parameter group.
        attribute :group_family
        validates :group_family, inclusion: {:in=>[:"memcached1.4", :"redis2.6", :"redis2.8", :"redis3.2", :"redis4.0"], :message=>"%{value} needs to be :\"memcached1.4\", :\"redis2.6\", :\"redis2.8\", :\"redis3.2\", :\"redis4.0\""}, allow_nil: true

        # @return [String] A user-specified name for the cache parameter group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A user-specified description for the cache parameter group.
        attribute :description

        # @return [:present, :absent, :reset] Idempotent actions that will create/modify, destroy, or reset a cache parameter group as needed.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :reset], :message=>"%{value} needs to be :present, :absent, :reset"}

        # @return [Object, nil] A user-specified dictionary of parameters to reset or modify for the cache parameter group.
        attribute :values
      end
    end
  end
end
