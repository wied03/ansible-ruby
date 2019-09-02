# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage HTTP profiles on a BIG-IP.
      class Bigip_profile_http < Base
        # @return [String] Specifies the name of the profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specifies the profile from which this profile inherits settings.,When creating a new profile, if this parameter is not specified, the default is the system-supplied C(http) profile.
        attribute :parent
        validates :parent, type: String

        # @return [Object, nil] Description of the profile.
        attribute :description

        # @return [:reverse, :transparent, :explicit, nil] Specifies the proxy mode for the profile.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :proxy_type
        validates :proxy_type, expression_inclusion: {:in=>[:reverse, :transparent, :explicit], :message=>"%{value} needs to be :reverse, :transparent, :explicit"}, allow_nil: true

        # @return [Object, nil] Specifies the name of a configured DNS resolver, this option is mandatory when C(proxy_type) is set to C(explicit).,Format of the name can be either be prepended by partition (C(/Common/foo)), or specified just as an object name (C(foo)).,To remove the entry a value of C(none) or C('') can be set, however the profile C(proxy_type) must not be set as C(explicit).
        attribute :dns_resolver

        # @return [Symbol, nil] When specified system inserts an X-Forwarded-For header in an HTTP request with the client IP address, to use with connection pooling.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :insert_xforwarded_for
        validates :insert_xforwarded_for, type: Symbol

        # @return [:none, :all, :matching, :nodes, nil] Specifies whether the system rewrites the URIs that are part of HTTP redirect (3XX) responses.,When set to C(none) the system will not rewrite the URI in any HTTP redirect responses.,When set to C(all) the system rewrites the URI in all HTTP redirect responses.,When set to C(matching) the system rewrites the URI in any HTTP redirect responses that match the request URI.,When set to C(nodes) if the URI contains a node IP address instead of a host name, the system changes it to the virtual server address.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :redirect_rewrite
        validates :redirect_rewrite, expression_inclusion: {:in=>[:none, :all, :matching, :nodes], :message=>"%{value} needs to be :none, :all, :matching, :nodes"}, allow_nil: true

        # @return [Array<String>, String, nil] Cookie names for the system to encrypt.,To remove the entry completely a value of C(none) or C('') should be set.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :encrypt_cookies
        validates :encrypt_cookies, type: TypeGeneric.new(String)

        # @return [Object, nil] Passphrase for cookie encryption.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :encrypt_cookie_secret

        # @return [:always, :on_create, nil] C(always) will update passwords if the C(encrypt_cookie_secret) is specified.,C(on_create) will only set the password for newly created profiles.
        attribute :update_password
        validates :update_password, expression_inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the profile exists.,When C(absent), ensures the profile is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
