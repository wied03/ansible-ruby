# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage registration and subscription to the Red Hat Subscription Management entitlement platform using the C(subscription-manager) command
      class Redhat_subscription < Base
        # @return [:present, :absent, nil] whether to register and subscribe (C(present)), or unregister (C(absent)) a system
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] access.redhat.com or Sat6  username
        attribute :username
        validates :username, type: String

        # @return [String, nil] access.redhat.com or Sat6 password
        attribute :password
        validates :password, type: String

        # @return [Object, nil] Specify an alternative Red Hat Subscription Management or Sat6 server
        attribute :server_hostname

        # @return [Object, nil] Enable or disable https server certificate verification when connecting to C(server_hostname)
        attribute :server_insecure

        # @return [Object, nil] Specify CDN baseurl
        attribute :rhsm_baseurl

        # @return [Object, nil] Specify an alternative location for a CA certificate for CDN
        attribute :rhsm_repo_ca_cert

        # @return [Object, nil] Specify a HTTP proxy hostname
        attribute :server_proxy_hostname

        # @return [Object, nil] Specify a HTTP proxy port
        attribute :server_proxy_port

        # @return [Object, nil] Specify a user for HTTP proxy with basic authentication
        attribute :server_proxy_user

        # @return [Object, nil] Specify a password for HTTP proxy with basic authentication
        attribute :server_proxy_password

        # @return [String, nil] Upon successful registration, auto-consume available subscriptions,Added in favor of deprecated autosubscribe in 2.5.
        attribute :auto_attach
        validates :auto_attach, type: String

        # @return [String, nil] supply an activation key for use with registration
        attribute :activationkey
        validates :activationkey, type: String

        # @return [Integer, nil] Organization ID to use in conjunction with activationkey
        attribute :org_id
        validates :org_id, type: Integer

        # @return [String, nil] Register with a specific environment in the destination org. Used with Red Hat Satellite 6.x or Katello
        attribute :environment
        validates :environment, type: String

        # @return [String, nil] Specify a subscription pool name to consume.  Regular expressions accepted. Use I(pool_ids) instead if\r\npossible, as it is much faster. Mutually exclusive with I(pool_ids).\r\n
        attribute :pool
        validates :pool, type: String

        # @return [Object, nil] Specify subscription pool IDs to consume. Prefer over I(pool) when possible as it is much faster.\r\nA pool ID may be specified as a C(string) - just the pool ID (ex. C(0123456789abcdef0123456789abcdef)),\r\nor as a C(dict) with the pool ID as the key, and a quantity as the value (ex.\r\nC(0123456789abcdef0123456789abcdef: 2). If the quantity is provided, it is used to consume multiple\r\nentitlements from a pool (the pool must support this). Mutually exclusive with I(pool).\r\n
        attribute :pool_ids

        # @return [Object, nil] The type of unit to register, defaults to system
        attribute :consumer_type

        # @return [Object, nil] Name of the system to register, defaults to the hostname
        attribute :consumer_name

        # @return [String, nil] References an existing consumer ID to resume using a previous registration\r\nfor this system. If the  system's identity certificate is lost or corrupted,\r\nthis option allows it to resume using its previous identity and subscriptions.\r\nThe default is to not specify a consumer ID so a new ID is created.\r\n
        attribute :consumer_id
        validates :consumer_id, type: String

        # @return [String, nil] Register the system even if it is already registered
        attribute :force_register
        validates :force_register, type: String
      end
    end
  end
end
