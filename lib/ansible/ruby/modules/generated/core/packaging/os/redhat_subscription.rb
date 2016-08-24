# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Redhat_subscription < Base
        # @return [:present, :absent, nil] whether to register and subscribe (C(present)), or unregister (C(absent)) a system
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Red Hat Network username
        attribute :username
        validates :username, type: String

        # @return [String, nil] Red Hat Network password
        attribute :password
        validates :password, type: String

        # @return [String, nil] Specify an alternative Red Hat Network server
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

        # @return [Object, nil] Organisation ID to use in conjunction with activationkey
        attribute :org_id

        # @return [String, nil] Specify a subscription pool name to consume.  Regular expressions accepted.
        attribute :pool
        validates :pool, type: String

        # @return [Object, nil] The type of unit to register, defaults to system
        attribute :consumer_type

        # @return [Object, nil] Name of the system to register, defaults to the hostname
        attribute :consumer_name

        # @return [String, nil] References an existing consumer ID to resume using a previous registration for this system. If the  system's identity certificate is lost or corrupted, this option allows it to resume using its previous identity and subscriptions. The default is to not specify a consumer ID so a new ID is created.
        attribute :consumer_id
        validates :consumer_id, type: String
      end
    end
  end
end
