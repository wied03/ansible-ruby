# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for easy creation, updating and deletion of CloudFront distributions.
      class Cloudfront_distribution < Base
        # @return [:present, :absent, nil] The desired state of the distribution present - creates a new distribution or updates an existing distribution. absent - deletes an existing distribution.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The id of the cloudfront distribution. This parameter can be exchanged with I(alias) or I(caller_reference) and is used in conjunction with I(e_tag).
        attribute :distribution_id
        validates :distribution_id, type: String

        # @return [Object, nil] A unique identifier of a modified or existing distribution. Used in conjunction with I(distribution_id). Is determined automatically if not specified.
        attribute :e_tag

        # @return [String, nil] A unique identifier for creating and updating cloudfront distributions. Each caller reference must be unique across all distributions. e.g. a caller reference used in a web distribution cannot be reused in a streaming distribution. This parameter can be used instead of I(distribution_id) to reference an existing distribution. If not specified, this defaults to a datetime stamp of the format 'YYYY-MM-DDTHH:MM:SS.ffffff'.
        attribute :caller_reference
        validates :caller_reference, type: String

        # @return [Hash, nil] Should be input as a dict() of key-value pairs. Note that numeric keys or values must be wrapped in quotes. e.g. "Priority:" '1'
        attribute :tags
        validates :tags, type: Hash

        # @return [String, nil] Specifies whether existing tags will be removed before adding new tags. When I(purge_tags=yes), existing tags are removed and I(tags) are added, if specified. If no tags are specified, it removes all existing tags for the distribution. When I(purge_tags=no), existing tags are kept and I(tags) are added, if specified.
        attribute :purge_tags
        validates :purge_tags, type: String

        # @return [Object, nil] The name of an alias (CNAME) that is used in a distribution. This is used to effectively reference a distribution by its alias as an alias can only be used by one distribution per AWS account. This variable avoids having to provide the I(distribution_id) as well as the I(e_tag), or I(caller_reference) of an existing distribution.
        attribute :alias

        # @return [Array<String>, String, nil] A I(list[]) of domain name aliases (CNAMEs) as strings to be used for the distribution. Each alias must be unique across all distribution for the AWS account.
        attribute :aliases
        validates :aliases, type: TypeGeneric.new(String)

        # @return [String, nil] Specifies whether existing aliases will be removed before adding new aliases. When I(purge_aliases=yes), existing aliases are removed and I(aliases) are added.
        attribute :purge_aliases
        validates :purge_aliases, type: String

        # @return [Object, nil] A config element that specifies the path to request when the user requests the origin. e.g. if specified as 'index.html', this maps to www.example.com/index.html when www.example.com is called by the user. This prevents the entire distribution origin from being exposed at the root.
        attribute :default_root_object

        # @return [String, nil] The domain name to use for an origin if no I(origins) have been specified. Should only be used on a first run of generating a distribution and not on subsequent runs. Should not be used in conjunction with I(distribution_id), I(caller_reference) or I(alias).
        attribute :default_origin_domain_name
        validates :default_origin_domain_name, type: String

        # @return [Object, nil] The default origin path to specify for an origin if no I(origins) have been specified. Defaults to empty if not specified.
        attribute :default_origin_path

        # @return [Array<Hash>, Hash, nil] A config element that is a I(list[]) of complex origin objects to be specified for the distribution. Used for creating and updating distributions. Each origin item comprises the attributes I(id) I(domain_name) (defaults to default_origin_domain_name if not specified) I(origin_path) (defaults to default_origin_path if not specified) I(custom_headers[]) I(header_name) I(header_value) I(s3_origin_access_identity_enabled) I(custom_origin_config) I(http_port) I(https_port) I(origin_protocol_policy) I(origin_ssl_protocols[]) I(origin_read_timeout) I(origin_keepalive_timeout)
        attribute :origins
        validates :origins, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Whether to remove any origins that aren't listed in I(origins)
        attribute :purge_origins
        validates :purge_origins, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Hash, nil] A config element that is a complex object specifying the default cache behavior of the distribution. If not specified, the I(target_origin_id) is defined as the I(target_origin_id) of the first valid I(cache_behavior) in I(cache_behaviors) with defaults. The default cache behavior comprises the attributes I(target_origin_id) I(forwarded_values) I(query_string) I(cookies) I(forward) I(whitelisted_names) I(headers[]) I(query_string_cache_keys[]) I(trusted_signers) I(enabled) I(items[]) I(viewer_protocol_policy) I(min_ttl) I(allowed_methods) I(items[]) I(cached_methods[]) I(smooth_streaming) I(default_ttl) I(max_ttl) I(compress) I(lambda_function_associations[]) I(lambda_function_arn) I(event_type) I(field_level_encryption_id)
        attribute :default_cache_behavior
        validates :default_cache_behavior, type: Hash

        # @return [Object, nil] A config element that is a I(list[]) of complex cache behavior objects to be specified for the distribution. The order of the list is preserved across runs unless C(purge_cache_behavior) is enabled. Each cache behavior comprises the attributes I(path_pattern) I(target_origin_id) I(forwarded_values) I(query_string) I(cookies) I(forward) I(whitelisted_names) I(headers[]) I(query_string_cache_keys[]) I(trusted_signers) I(enabled) I(items[]) I(viewer_protocol_policy) I(min_ttl) I(allowed_methods) I(items[]) I(cached_methods[]) I(smooth_streaming) I(default_ttl) I(max_ttl) I(compress) I(lambda_function_associations[]) I(field_level_encryption_id)
        attribute :cache_behaviors

        # @return [Boolean, nil] Whether to remove any cache behaviors that aren't listed in I(cache_behaviors). This switch also allows the reordering of cache_behaviors.
        attribute :purge_cache_behaviors
        validates :purge_cache_behaviors, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] A config element that is a I(list[]) of complex custom error responses to be specified for the distribution. This attribute configures custom http error messages returned to the user. Each custom error response object comprises the attributes I(error_code) I(reponse_page_path) I(response_code) I(error_caching_min_ttl)
        attribute :custom_error_responses

        # @return [Boolean, nil] Whether to remove any custom error responses that aren't listed in I(custom_error_responses)
        attribute :purge_custom_error_responses
        validates :purge_custom_error_responses, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] A comment that describes the cloudfront distribution. If not specified, it defaults to a generic message that it has been created with Ansible, and a datetime stamp.
        attribute :comment
        validates :comment, type: String

        # @return [Hash, nil] A config element that is a complex object that defines logging for the distribution. The logging object comprises the attributes I(enabled) I(include_cookies) I(bucket) I(prefix)
        attribute :logging
        validates :logging, type: Hash

        # @return [:PriceClass_100, :PriceClass_200, :PriceClass_All, nil] A string that specifies the pricing class of the distribution. As per U(https://aws.amazon.com/cloudfront/pricing/) I(price_class=PriceClass_100) consists of the areas United States Canada Europe I(price_class=PriceClass_200) consists of the areas United States Canada Europe Hong Kong, Philippines, S. Korea, Singapore & Taiwan Japan India I(price_class=PriceClass_All) consists of the areas United States Canada Europe Hong Kong, Philippines, S. Korea, Singapore & Taiwan Japan India South America Australia
        attribute :price_class
        validates :price_class, inclusion: {:in=>[:PriceClass_100, :PriceClass_200, :PriceClass_All], :message=>"%{value} needs to be :PriceClass_100, :PriceClass_200, :PriceClass_All"}, allow_nil: true

        # @return [String, nil] A boolean value that specifies whether the distribution is enabled or disabled.
        attribute :enabled
        validates :enabled, type: String

        # @return [Object, nil] A config element that is a complex object that specifies the encryption details of the distribution. Comprises the following attributes I(cloudfront_default_certificate) I(iam_certificate_id) I(acm_certificate_arn) I(ssl_support_method) I(minimum_protocol_version) I(certificate) I(certificate_source)
        attribute :viewer_certificate

        # @return [Object, nil] A config element that is a complex object that describes how a distribution should restrict it's content. The restriction object comprises the following attributes I(geo_restriction) I(restriction_type) I(items[])
        attribute :restrictions

        # @return [Object, nil] The id of a Web Application Firewall (WAF) Access Control List (ACL).
        attribute :web_acl_id

        # @return [:"http1.1", :http2, nil] The version of the http protocol to use for the distribution.
        attribute :http_version
        validates :http_version, inclusion: {:in=>[:"http1.1", :http2], :message=>"%{value} needs to be :\"http1.1\", :http2"}, allow_nil: true

        # @return [String, nil] Determines whether IPv6 support is enabled or not.
        attribute :ipv6_enabled
        validates :ipv6_enabled, type: String

        # @return [String, nil] Specifies whether the module waits until the distribution has completed processing the creation or update.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] Specifies the duration in seconds to wait for a timeout of a cloudfront create or update. Defaults to 1800 seconds (30 minutes).
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
