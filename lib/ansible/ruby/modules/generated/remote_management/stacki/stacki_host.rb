# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use this module to add or remove hosts to a stacki front-end via API
      # U(https://github.com/StackIQ/stacki)
      class Stacki_host < Base
        # @return [String] Name of the host to be added to Stacki.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Username for authenticating with Stacki API, but if not specified, the environment variable C(stacki_user) is used instead.
        attribute :stacki_user
        validates :stacki_user, presence: true, type: String

        # @return [String] Password for authenticating with Stacki API, but if not specified, the environment variable C(stacki_password) is used instead.
        attribute :stacki_password
        validates :stacki_password, presence: true, type: String

        # @return [String] URL for the Stacki API Endpoint.
        attribute :stacki_endpoint
        validates :stacki_endpoint, presence: true, type: String

        # @return [String, nil] MAC Address for the primary PXE boot network interface.
        attribute :prim_intf_mac
        validates :prim_intf_mac, type: String

        # @return [String, nil] IP Address for the primary network interface.
        attribute :prim_intf_ip
        validates :prim_intf_ip, type: String

        # @return [String, nil] Name of the primary network interface.
        attribute :prim_intf
        validates :prim_intf, type: String

        # @return [Object, nil] Set value to True to force node into install state if it already exists in stacki.
        attribute :force_install
      end
    end
  end
end
