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

        # @return [String, nil] Specify an alternative Red Hat Subscription Management or Sat6 server
        attribute :server_hostname
        validates :server_hostname, type: String

        # @return [String, nil] Enable or disable https server certificate verification when connecting to C(server_hostname)
        attribute :server_insecure
        validates :server_insecure, type: String

        # @return [String, nil] Specify CDN baseurl
        attribute :rhsm_baseurl
        validates :rhsm_baseurl, type: String

        # @return [Boolean, nil] Upon successful registration, auto-consume available subscriptions
        attribute :autosubscribe
        validates :autosubscribe, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] supply an activation key for use with registration
        attribute :activationkey
        validates :activationkey, type: String

        # @return [Integer, nil] Organization ID to use in conjunction with activationkey
        attribute :org_id
        validates :org_id, type: Integer

        # @return [String, nil] Register with a specific environment in the destination org. Used with Red Hat Satellite 6.x or Katello
        attribute :environment
        validates :environment, type: String

        # @return [String, nil] Specify a subscription pool name to consume.  Regular expressions accepted.
        attribute :pool
        validates :pool, type: String

        # @return [Object, nil] The type of unit to register, defaults to system
        attribute :consumer_type

        # @return [Object, nil] Name of the system to register, defaults to the hostname
        attribute :consumer_name

        # @return [String, nil] References an existing consumer ID to resume using a previous registration\r\nfor this system. If the  system's identity certificate is lost or corrupted,\r\nthis option allows it to resume using its previous identity and subscriptions.\r\nThe default is to not specify a consumer ID so a new ID is created.\r\n
        attribute :consumer_id
        validates :consumer_id, type: String

        # @return [Boolean, nil] Register the system even if it is already registered
        attribute :force_register
        validates :force_register, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
