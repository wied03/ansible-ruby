# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage registration to the Red Hat Network.
      class Rhn_register < Base
        # @return [:present, :absent, nil] whether to register (C(present)), or unregister (C(absent)) a system
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Red Hat Network username
        attribute :username
        validates :username, type: String

        # @return [String, nil] Red Hat Network password
        attribute :password
        validates :password, type: String

        # @return [String, nil] Specify an alternative Red Hat Network server URL
        attribute :server_url
        validates :server_url, type: String

        # @return [String, nil] supply an activation key for use with registration
        attribute :activationkey
        validates :activationkey, type: String

        # @return [String, nil] supply an profilename for use with registration
        attribute :profilename
        validates :profilename, type: String

        # @return [Object, nil] supply a custom ssl CA certificate file for use with registration
        attribute :sslcacert

        # @return [Object, nil] supply an organizational id for use with registration
        attribute :systemorgid

        # @return [Object, nil] Optionally specify a list of comma-separated channels to subscribe to upon successful registration.
        attribute :channels

        # @return [String, nil] If C(no), extended update support will be requested.
        attribute :enable_eus
        validates :enable_eus, type: String

        # @return [String, nil] If C(yes), the registered node will not upload its installed packages information to Satellite server
        attribute :nopackages
        validates :nopackages, type: String
      end
    end
  end
end
