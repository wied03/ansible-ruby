# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage server entities configuration.
      # This module is intended to run either on the ansible  control node or a bastion (jumpserver) with access to the actual netscaler instance.
      class Netscaler_server < Base
        # @return [String, nil] Name for the server.,Must begin with an ASCII alphabetic or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters.,Can be changed after the name is created.,Minimum length = 1
        attribute :name
        validates :name, type: String

        # @return [String, nil] IPv4 or IPv6 address of the server. If you create an IP address based server, you can specify the name of the server, instead of its IP address, when creating a service. Note: If you do not create a server entry, the server IP address that you enter when you create a service becomes the name of the server.
        attribute :ipaddress
        validates :ipaddress, type: String

        # @return [Object, nil] Domain name of the server. For a domain based configuration, you must create the server first.,Minimum length = 1
        attribute :domain

        # @return [Object, nil] IP address used to transform the server's DNS-resolved IP address.
        attribute :translationip

        # @return [Object, nil] The netmask of the translation ip.
        attribute :translationmask

        # @return [Integer, nil] Time, in seconds, for which the NetScaler appliance must wait, after DNS resolution fails, before sending the next DNS query to resolve the domain name.,Minimum value = C(5),Maximum value = C(20939)
        attribute :domainresolveretry
        validates :domainresolveretry, type: Integer

        # @return [Boolean, nil] Support IPv6 addressing mode. If you configure a server with the IPv6 addressing mode, you cannot use the server in the IPv4 addressing mode.
        attribute :ipv6address
        validates :ipv6address, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Any information about the server.
        attribute :comment

        # @return [Object, nil] Integer value that uniquely identifies the traffic domain in which you want to configure the entity. If you do not specify an ID, the entity becomes part of the default traffic domain, which has an ID of 0.,Minimum value = C(0),Maximum value = C(4094)
        attribute :td

        # @return [Object, nil] Shut down gracefully, without accepting any new connections, and disabling each service when all of its connections are closed.,This option is meaningful only when setting the I(disabled) option to C(true)
        attribute :graceful

        # @return [Object, nil] Time, in seconds, after which all the services configured on the server are disabled.,This option is meaningful only when setting the I(disabled) option to C(true)
        attribute :delay

        # @return [Boolean, nil] When set to C(true) the server state will be set to C(disabled).,When set to C(false) the server state will be set to C(enabled).,Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.
        attribute :disabled
        validates :disabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
