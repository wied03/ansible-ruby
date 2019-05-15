# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gets information about an AWS CloudFront distribution
      class Cloudfront_facts < Base
        # @return [String, nil] The id of the CloudFront distribution. Used with I(distribution), I(distribution_config), I(invalidation), I(streaming_distribution), I(streaming_distribution_config), I(list_invalidations).
        attribute :distribution_id
        validates :distribution_id, type: String

        # @return [String, nil] The id of the invalidation to get information about. Used with I(invalidation).
        attribute :invalidation_id
        validates :invalidation_id, type: String

        # @return [String, nil] The id of the cloudfront origin access identity to get information about.
        attribute :origin_access_identity_id
        validates :origin_access_identity_id, type: String

        # @return [Object, nil] Used with I(list_distributions_by_web_acl_id).
        attribute :web_acl_id

        # @return [String, nil] Can be used instead of I(distribution_id) - uses the aliased CNAME for the cloudfront distribution to get the distribution id where required.
        attribute :domain_name_alias
        validates :domain_name_alias, type: String

        # @return [Boolean, nil] Get all cloudfront lists that do not require parameters.
        attribute :all_lists
        validates :all_lists, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get information about an origin access identity. Requires I(origin_access_identity_id) to be specified.
        attribute :origin_access_identity
        validates :origin_access_identity, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get the configuration information about an origin access identity. Requires I(origin_access_identity_id) to be specified.
        attribute :origin_access_identity_config
        validates :origin_access_identity_config, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get information about a distribution. Requires I(distribution_id) or I(domain_name_alias) to be specified.
        attribute :distribution
        validates :distribution, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get the configuration information about a distribution. Requires I(distribution_id) or I(domain_name_alias) to be specified.
        attribute :distribution_config
        validates :distribution_config, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get information about an invalidation. Requires I(invalidation_id) to be specified.
        attribute :invalidation
        validates :invalidation, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get information about a specified RTMP distribution. Requires I(distribution_id) or I(domain_name_alias) to be specified.
        attribute :streaming_distribution
        validates :streaming_distribution, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get the configuration information about a specified RTMP distribution. Requires I(distribution_id) or I(domain_name_alias) to be specified.
        attribute :streaming_distribution_config
        validates :streaming_distribution_config, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get a list of cloudfront origin access identities. Requires I(origin_access_identity_id) to be set.
        attribute :list_origin_access_identities
        validates :list_origin_access_identities, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get a list of cloudfront distributions.
        attribute :list_distributions
        validates :list_distributions, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get a list of distributions using web acl id as a filter. Requires I(web_acl_id) to be set.
        attribute :list_distributions_by_web_acl_id
        validates :list_distributions_by_web_acl_id, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get a list of invalidations. Requires I(distribution_id) or I(domain_name_alias) to be specified.
        attribute :list_invalidations
        validates :list_invalidations, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Get a list of streaming distributions.
        attribute :list_streaming_distributions
        validates :list_streaming_distributions, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Returns a summary of all distributions, streaming distributions and origin_access_identities. This is the default behaviour if no option is selected.
        attribute :summary
        validates :summary, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
