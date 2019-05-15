# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for invalidation of a batch of paths for a CloudFront distribution.
      class Cloudfront_invalidation < Base
        # @return [String, nil] The id of the cloudfront distribution to invalidate paths for. Can be specified insted of the alias.
        attribute :distribution_id
        validates :distribution_id, type: String

        # @return [String, nil] The alias of the cloudfront distribution to invalidate paths for. Can be specified instead of distribution_id.
        attribute :alias
        validates :alias, type: String

        # @return [String, nil] A unique reference identifier for the invalidation paths.
        attribute :caller_reference
        validates :caller_reference, type: String

        # @return [Array<String>, String] A list of paths on the distribution to invalidate. Each path should begin with '/'. Wildcards are allowed. eg. '/foo/bar/*'
        attribute :target_paths
        validates :target_paths, presence: true, type: TypeGeneric.new(String)
      end
    end
  end
end
