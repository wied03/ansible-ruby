# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rhn_register < Base
        # @return [String] whether to register (C(present)), or unregister (C(absent)) a system
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Red Hat Network username
        attribute :username
        validates :username, type: String

        # @return [String] Red Hat Network password
        attribute :password
        validates :password, type: String

        # @return [String] Specify an alternative Red Hat Network server URL
        attribute :server_url
        validates :server_url, type: String

        # @return [String] supply an activation key for use with registration
        attribute :activationkey
        validates :activationkey, type: String

        # @return [String] supply an profilename for use with registration
        attribute :profilename
        validates :profilename, type: String

        # @return [String] supply a custom ssl CA certificate file for use with registration
        attribute :sslcacert
        validates :sslcacert, type: String

        # @return [String] supply an organizational id for use with registration
        attribute :systemorgid
        validates :systemorgid, type: String

        # @return [Array] Optionally specify a list of comma-separated channels to subscribe to upon successful registration.
        attribute :channels
        validates :channels, type: Array
      end
    end
  end
end
